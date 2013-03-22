module ChaptersHelper
  def calculate_progress(chapter)
    finished = Hadit.where(chapter_id: chapter.id).count
    target = if chapter.tgtnum.nil? then 100 else chapter.tgtnum end
    return finished.to_f / target.to_f * 100
  end
end
