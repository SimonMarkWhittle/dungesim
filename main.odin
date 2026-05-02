package main

import "core:fmt"
import hm "handle_map_static"

print :: fmt.println
MAX_ROOMS :: 1 << 10
MAX_OCCUPANTS_PER_ROOM :: 1 << 7
MAX_RESOURCES_PER_ROOM :: 128
Attributes :: struct {
	aggressiveness: f64,
}
Person :: struct {
	using attributes: Attributes,
}
ResourceType :: enum {
	Food,
	Water,
}
Resource :: struct {
	type:                          ResourceType,
	amount, capacity, refill_rate: f64,
}
Room :: struct {
	handle:    RoomHandle,
	occupants: [MAX_OCCUPANTS_PER_ROOM]Person,
	resources: [MAX_RESOURCES_PER_ROOM]Resource,
}
RoomHandle :: distinct hm.Handle
Rooms :: hm.HandleMap(Room, RoomHandle, MAX_ROOMS)
RoomsIterator :: hm.HandleMap_Iterator(Room, RoomHandle, MAX_ROOMS)
ConnectionType :: enum {
	Land,
	Water,
	Door,
}
RoomConnection :: struct {
	start, end: RoomHandle,
	type:       ConnectionType,
}

State :: struct {
	frame_counter: int,
	rooms:         Rooms,
	connections:   [dynamic]RoomConnection,
}
state: ^State


main :: proc() {
	// state = new(State)
	// init_room_data()
	// for {
	// 	dump_state_to_db()
	// 	step()
	// 	state.frame_counter += 1
	// }
}

init_room_data :: proc() {
	//TODO: from save file or db state
}

step :: proc() {
	it := hm.make_iter(&state.rooms)
	for room in hm.iter(&it) {
		//simulate room
		print(room)
	}
}

dump_state_to_db :: proc() {

}
