.class public final Lcom/qennnsad/aknkaksd/presentation/module/main/profile/d;
.super Ljava/lang/Object;
.source "UserProfileActivity_MembersInjector.java"

# interfaces
.implements Ld6/g;


# annotations
.annotation build Ldagger/internal/e;
.end annotation

.annotation build Ldagger/internal/r;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/g<",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lg5/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lg5/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/d;->a:Lu7/c;

    return-void
.end method

.method public static b(Lu7/c;)Ld6/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lg5/a;",
            ">;)",
            "Ld6/g<",
            "Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileActivity;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/d;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/d;-><init>(Lu7/c;)V

    return-object v0
.end method

.method public static c(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileActivity;Lg5/a;)V
    .locals 0
    .annotation build Ldagger/internal/j;
        value = "com.qennnsad.aknkaksd.presentation.module.main.profile.UserProfileActivity.localDataManager"
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileActivity;->k:Lg5/a;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileActivity;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/d;->d(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileActivity;)V

    return-void
.end method

.method public d(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileActivity;)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/d;->a:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/d;->c(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileActivity;Lg5/a;)V

    return-void
.end method
