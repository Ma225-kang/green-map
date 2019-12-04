class AddParticipationProofToMissions < ActiveRecord::Migration[5.2]
  def change
      add_column :missions, :participation_proof, :string
  end
end
