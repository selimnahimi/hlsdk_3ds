PREFIX    = $(DEVKITARM)/bin/arm-none-eabi
CC        = $(PREFIX)-gcc
CXX       = $(PREFIX)-g++
AR        = $(PREFIX)-ar

OBJS = \
	aflock.o \
	agrunt.o \
	airtank.o \
	animating.o \
	animation.o \
	apache.o \
	barnacle.o \
	barney.o \
	bigmomma.o \
	bloater.o \
	bmodels.o \
	bullsquid.o \
	buttons.o \
	cbase.o \
	client.o \
	combat.o \
	controller.o \
	crossbow.o \
	crowbar.o \
	defaultai.o \
	doors.o \
	effects.o \
	egon.o \
	explode.o \
	flyingmonster.o \
	func_break.o \
	func_tank.o \
	game.o \
	gamerules.o \
	gargantua.o \
	gauss.o \
	genericmonster.o \
	ggrenade.o \
	globals.o \
	gman.o \
	h_ai.o \
	h_battery.o \
	h_cine.o \
	h_cycler.o \
	h_export.o \
	handgrenade.o \
	hassassin.o \
	headcrab.o \
	healthkit.o \
	hgrunt.o \
	hornet.o \
	hornetgun.o \
	houndeye.o \
	ichthyosaur.o \
	islave.o \
	items.o \
	leech.o \
	lights.o \
	maprules.o \
	monstermaker.o \
	monsters.o \
	monsterstate.o \
	mortar.o \
	mp5.o \
	multiplay_gamerules.o \
	nihilanth.o \
	nodes.o \
	observer.o \
	osprey.o \
	pathcorner.o \
	plane.o \
	plats.o \
	player.o \
	playermonster.o \
	python.o \
	rat.o \
	roach.o \
	rpg.o \
	satchel.o \
	schedule.o \
	scientist.o \
	scripted.o \
	shotgun.o \
	singleplay_gamerules.o \
	skill.o \
	sound.o \
	soundent.o \
	spectator.o \
	squadmonster.o \
	squeakgrenade.o \
	subs.o \
	talkmonster.o \
	teamplay_gamerules.o \
	tempmonster.o \
	tentacle.o \
	triggers.o \
	tripmine.o \
	turret.o \
	util.o \
	weapons.o \
	world.o \
	xen.o \
	zombie.o \
	glock.o \
	gearbox/blkop_apache.o \
	gearbox/blkop_osprey.o \
	gearbox/cleansuit_scientist.o \
	gearbox/ctf_gamerules.o \
	gearbox/ctf_items.o \
	gearbox/ctf_powerups.o \
	gearbox/displacer.o \
	gearbox/drillsergeant.o \
	gearbox/eagle.o \
#	gearbox/fgrunt_medic.o \
#	gearbox/fgrunt_torch.o \
	gearbox/fgrunt.o \
	gearbox/func_tank_of.o \
	gearbox/gearbox_effects.o \
	gearbox/gearbox_subs.o \
	gearbox/gearbox_triggers.o \
	gearbox/gearbox_utils.o \
	gearbox/generic_items.o \
	gearbox/geneworm.o \
	gearbox/gonome.o \
	gearbox/grapple_tonguetip.o \
	gearbox/grapple.o \
	gearbox/houndeye_dead.o \
	gearbox/islave_dead.o \
	gearbox/knife.o \
	gearbox/loader.o \
	gearbox/m249.o \
	gearbox/massn.o \
	gearbox/nuclearbomb.o \
	gearbox/otis.o \
	gearbox/penguin.o \
	gearbox/pipewrench.o \
	gearbox/pitdrone.o \
	gearbox/pitworm.o \
	gearbox/recruit.o \
	gearbox/ropes.o \
	gearbox/shock.o \
	gearbox/shockrifle.o \
	gearbox/shockroach.o \
	gearbox/skeleton.o \
	gearbox/sniperrifle.o \
	gearbox/spore_ammo.o \
	gearbox/sporegrenade.o \
	gearbox/sporelauncher.o \
	gearbox/strooper.o \
	gearbox/voltigore.o \
	gearbox/zombie_barney.o \
	gearbox/zombie_soldier.o \
	../pm_shared/pm_debug.o \
	../pm_shared/pm_math.o \
	../pm_shared/pm_shared.o 

INCLUDES = -I. -I../engine -I../common -I../pm_shared -I../game_shared -I./gearbox
DEFINES = -Dstricmp=strcasecmp -D_strnicmp=strncasecmp -Dstrnicmp=strncasecmp -D_snprintf=snprintf -DCLIENT_WEAPONS -DNO_VOICEGAMEMGR -D_3DS
CFLAGS =  -march=armv6k -mtune=mpcore -mfloat-abi=hard -mtp=soft -O2 -Wl,-q -Wfatal-errors -Wno-write-strings -fsigned-char -fno-short-enums -ffunction-sections -fdata-sections $(DEFINES) $(INCLUDES)
CXXFLAGS = $(CFLAGS) -fno-exceptions -std=gnu++11 -fno-threadsafe-statics -fpermissive -static-libstdc++ -static-libgcc -Wno-invalid-offsetof
ASFLAGS = $(CFLAGS)

all: libserver.a

libserver.a: $(OBJS)
	$(AR) rcs $@ $^

clean:
	@rm -rf libserver.a $(OBJS)
