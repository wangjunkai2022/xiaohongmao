.class public Lcom/qennnsad/aknkaksd/presentation/module/main/followers/f;
.super Ljava/lang/Object;
.source "FollowersFragmentDirections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/module/main/followers/f$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroidx/navigation/NavDirections;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroidx/navigation/ActionOnlyNavDirections;

    const v1, 0x7f0a06b0

    invoke-direct {v0, v1}, Landroidx/navigation/ActionOnlyNavDirections;-><init>(I)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/qennnsad/aknkaksd/presentation/module/main/followers/f$b;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/f$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/f$b;-><init>(Ljava/lang/String;Lcom/qennnsad/aknkaksd/presentation/module/main/followers/f$a;)V

    return-object v0
.end method
