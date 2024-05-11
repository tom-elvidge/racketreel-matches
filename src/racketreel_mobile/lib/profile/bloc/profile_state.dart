part of 'profile_bloc.dart';

final class FollowerUser extends Equatable {
  final String userId;
  final String displayName;
  final Uri avatar;

  FollowerUser(
    this.userId,
    this.displayName,
    this.avatar,
  );

  @override
  List<Object?> get props => [userId, displayName, avatar];
}

final class FollowedUser extends Equatable {
  final String userId;
  final String displayName;
  final Uri avatar;

  FollowedUser(
      this.userId,
      this.displayName,
      this.avatar,
      );

  @override
  List<Object?> get props => [userId, displayName, avatar];
}


@immutable
final class ProfileState extends Equatable {
  final bool isInitializing;
  final String? userId;
  final bool isUserFound;
  final String displayName;
  final Uri? avatar;
  final bool userIsCurrentUser;
  final bool? userFollowsCurrentUser;
  final bool? currentUserFollowsUser;
  final List<FollowedUser> following;
  final List<FollowerUser> followers;

  ProfileState({
    this.isInitializing = false,
    this.userId,
    this.isUserFound = false,
    this.displayName = "",
    this.avatar,
    this.userIsCurrentUser = false,
    this.userFollowsCurrentUser,
    this.currentUserFollowsUser,
    this.following = const <FollowedUser>[],
    this.followers = const <FollowerUser>[],
  });

  ProfileState copyWith({
    bool? isInitializing,
    String? userId,
    bool? isUserFound,
    String? displayName,
    Uri? avatar,
    bool? userIsCurrentUser,
    bool? userFollowsCurrentUser,
    bool? currentUserFollowsUser,
    List<FollowedUser>? following,
    List<FollowerUser>? followers,
  }) {
    return ProfileState(
      isInitializing: isInitializing ?? this.isInitializing,
      userId: userId ?? this.userId,
      isUserFound: isUserFound ?? this.isUserFound,
      displayName: displayName ?? this.displayName,
      avatar: avatar ?? this.avatar,
      userIsCurrentUser: userIsCurrentUser ?? this.userIsCurrentUser,
      userFollowsCurrentUser: userFollowsCurrentUser ?? this.userFollowsCurrentUser,
      currentUserFollowsUser: currentUserFollowsUser ?? this.currentUserFollowsUser,
      following: following ?? this.following,
      followers: followers ?? this.followers,
    );
  }

  @override
  List<Object?> get props => [
    isInitializing,
    userId,
    isUserFound,
    displayName,
    avatar,
    userIsCurrentUser,
    userFollowsCurrentUser,
    currentUserFollowsUser,
    following,
    followers,
  ];
}