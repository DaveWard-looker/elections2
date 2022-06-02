include: "/views/house.view.lkml"
view: +house {

  measure: total_candidate_votes {
    type: sum
    sql: ${candidatevotes} ;;
    value_format_name: usd_in_millions
  }

  measure: count_of_candidates  {
    type: count_distinct
    sql: ${candidate} ;;
    value_format_name: phone_number
  }
  }
