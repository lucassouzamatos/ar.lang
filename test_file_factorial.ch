fun recur (F) -> 
  fun Recursion (X) ->
    apply X X done
  done

  fun Bind (X) ->
    fun Inner (Y) ->
      let A = apply X X done
      apply A Y done
    done

    apply F Inner done
  done

  apply Recursion Bind done
done

fun builder(Self) ->
  fun Apply (N) ->
    match N with
      (1) -> 1 done
      (_) -> 
        let X = apply - N 1 done
        let Y = apply Self X done

        apply * N Y done
    done
  done
done

let factorial = apply recur builder done

apply factorial 4 done
