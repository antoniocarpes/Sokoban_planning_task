(define (domain sokoban)
(:predicates (man_pos ?x ?y) (box_pos ?x ?y) (wall_pos ?x ?y) 
(succ ?y1 ?y2))

(:action go_north
    :parameters (?x0 ?y0 ?y1)
    :precondition (and (succ ?y0 ?y1) (man_pos ?x0 ?y0) (not (box_pos ?x0 ?y1)) (not (wall_pos ?x0 ?y1))) 
    :effect (and(not (man_pos ?x0 ?y0)) (man_pos ?x0 ?y1)))

(:action move_box_north
:parameters (?x0 ?y0 ?y1 ?y2)
:precondition (and (succ ?y0 ?y1)(succ ?y1 ?y2)(man_pos ?x0 ?y0) (box_pos ?x0 ?y1)
(not (wall_pos ?x0 ?y2)) (not (box_pos ?x0 ?y2)))
:effect (and(not (man_pos ?x0 ?y0))  (not(box_pos ?x0 ?y1)) (man_pos ?x0 ?y1) (box_pos ?x0 ?y2)))

(:action go_south
:parameters (?x0 ?y0 ?y1)
:precondition (and (succ ?y1 ?y0) (man_pos ?x0 ?y0) (not (box_pos ?x0 ?y1)) (not (wall_pos ?x0 ?y1))) 
:effect (and(not (man_pos ?x0 ?y0)) (man_pos ?x0 ?y1)))

(:action move_box_south
:parameters (?x0 ?y0 ?y1 ?y2)
:precondition (and (succ ?y1 ?y0)(succ ?y2 ?y1)(man_pos ?x0 ?y0) (box_pos ?x0 ?y1)(not (wall_pos ?x0 ?y2)) (not (box_pos ?x0 ?y2))) 
:effect (and(not (man_pos ?x0 ?y0))  (not(box_pos ?x0 ?y1)) (man_pos ?x0 ?y1) (box_pos ?x0 ?y2)))

(:action go_east
:parameters (?x0 ?y0 ?x1)
:precondition (and (succ ?x0 ?x1) (man_pos ?x0 ?y0)(not (box_pos ?x1 ?y0)) (not (wall_pos ?x1 ?y0))) 
:effect (and(not (man_pos ?x0 ?y0)) (man_pos ?x1 ?y0)))

(:action move_box_east
:parameters (?x0 ?y0 ?x1 ?x2)
:precondition (and (succ ?x0 ?x1)(succ ?x1 ?x2)(man_pos ?x0 ?y0) (box_pos ?x1 ?y0)(not (wall_pos ?x2 ?y0)) (not (box_pos ?x2 ?y0))) 
:effect (and(not (man_pos ?x0 ?y0))  (not(box_pos ?x1 ?y0)) (man_pos ?x1 ?y0) (box_pos ?x2 ?y0)))

(:action go_west
:parameters (?x0 ?y0 ?x1)
:precondition (and (succ ?x1 ?x0) (man_pos ?x0 ?y0)(not (box_pos ?x1 ?y0)) (not (wall_pos ?x1 ?y0)))
:effect (and(not (man_pos ?x0 ?y0)) (man_pos ?x1 ?y0)))

(:action move_box_west
:parameters (?x0 ?y0 ?x1 ?x2)
:precondition (and (succ ?x1 ?x0)(succ ?x2 ?x1)(man_pos ?x0 ?y0) (box_pos ?x1 ?y0)(not (wall_pos ?x2 ?y0)) (not (box_pos ?x2 ?y0))) 
:effect (and(not (man_pos ?x0 ?y0))  (not(box_pos ?x1 ?y0)) (man_pos ?x1 ?y0) (box_pos ?x2 ?y0)))
)
