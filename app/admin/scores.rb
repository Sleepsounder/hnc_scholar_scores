# frozen_string_literal: true

ActiveAdmin.register Score do
  config.clear_action_items!
  permit_params :financial, :mccoy, :academic, :recommend, :essay, :comments, :bd, :career
  filter :applicant_last_name, as: :string, label: "Applicant Last Name"
  filter :user_last_name, as: :string, label: "Reader Last Name"
  filter :mccoy, label: "McCoy (1 = yes, 0 = no)"
  # Allows column to be sortable
  scope :joined, default: true do |scores|
    scores.includes %i[applicant user]
  end

  order_by(:applicant_name) do |order_clause|
    %w[applicants.last_name applicants.first_name].map { |column| "#{column} #{order_clause.order}" }.join(", ") # rubocop:disable Layout/LineLength
  end

  order_by(:reader_name) do |order_clause|
    %w[users.last_name users.first_name].map { |column| "#{column} #{order_clause.order}" }.join(", ") # rubocop:disable Layout/LineLength
  end

  controller do
    def update
      @score = Score.find(params[:id])
      if @score.update(score_params)
        flash[:notice] = "Update saved!"
        redirect_to admin_scores_path
        ApplicantScoreAverages.perform_later(@score.applicant)
      else render edit_admin_score_path
      end
    end

    def destroy
      @score = Score.find(params[:id])
      @score.destroy
      redirect_to admin_scores_path
      ApplicantScoreAverages.perform_later(@score.applicant)
    end

    private

    def score_params
      mccoy = if params[:score][:mccoy] == "1"
                1
              else
                0
              end
      params.require(:score).permit(
        :financial,
        :academic,
        :recommend,
        :essay,
        :comments,
        :career,
        :bd,
        :disqualified
      ).merge({ mccoy: mccoy })
    end
  end

  index do
    # For creating an ordered list
    # 35 needs to be set to same page size in active_admin.rb => config.default_per_page = 35
    @index = 35 * ((params[:page] || 1).to_i - 1)
    column do
      @index += 1
    end
    id_column
    column "Applicant Name", sortable: :applicant_name do |score|
      score.applicant.full_name
    end
    column "Reader Name", sortable: :reader_name do |score|
      score.user.full_name
    end
    column "McCoy", :mccoy_qualified, sortable: "mccoy"
    column "Fin", :financial
    column "Ac", :academic
    column "Rec", :recommend
    column "Imp", :essay
    column "Career", :career_admin
    column "BD", :bd_admin
    column "Comments", :comments_admin
    column :created_at, sortable: "created_at" do |score|
      (score.created_at - 4.hours).strftime("%b %d %I:%M%P")
    end
    column :updated_at, sortable: "updated_at" do |score|
      (score.updated_at - 4.hours).strftime("%b %d %I:%M%P")
    end
    actions
  end

  show do
    attributes_table do
      row "Applicant" do
        score.applicant_full_name
      end
      row "Reader" do
        score.user_full_name
      end
      row "McCoy" do
        score.mccoy_qualified
      end
      row :financial
      row :academic
      row :recommend
      row :essay
      row :career
      row :bd
      row :comments
    end
  end

  form do |f|
    f.inputs do
      f.input :applicant_full_name, input_html: { disabled: true }, label: "Applicant"
      f.input :user_full_name, input_html: { disabled: true }, label: "Reader"
      f.input :mccoy, as: :boolean
      f.input :financial
      f.input :academic
      f.input :recommend
      f.input :essay
      f.input :career
      f.input :bd
      f.input :comments
      f.submit
    end
  end
end
