local W, F, L, P = unpack(select(2, ...))

P.groupInviteGuard = {
    enabled = true,
    displayMessageAfterRejecting = true,
    smartMode = true,
    onlyFriendsOrGuildMembers = false,
    chatFilterMode = false
}