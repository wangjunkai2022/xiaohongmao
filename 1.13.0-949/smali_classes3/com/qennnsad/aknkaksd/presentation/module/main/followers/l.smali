.class public final Lcom/qennnsad/aknkaksd/presentation/module/main/followers/l;
.super Ljava/lang/Object;
.source "FollowersViewModel_HiltModules_KeyModule_ProvideFactory.java"

# interfaces
.implements Ldagger/internal/h;


# annotations
.annotation build Ldagger/internal/e;
.end annotation

.annotation build Ldagger/internal/r;
    value = {
        "dagger.hilt.android.internal.lifecycle.HiltViewModelMap.KeySet"
    }
.end annotation

.annotation build Ldagger/internal/s;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/module/main/followers/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/h<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/qennnsad/aknkaksd/presentation/module/main/followers/l;
    .locals 1

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/l$a;->a()Lcom/qennnsad/aknkaksd/presentation/module/main/followers/l;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/k$b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/p;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/l;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/l;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method