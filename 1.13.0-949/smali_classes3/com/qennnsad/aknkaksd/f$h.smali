.class final Lcom/qennnsad/aknkaksd/f$h;
.super Lcom/qennnsad/aknkaksd/d$e;
.source "DaggerBeautyLiveApplication_HiltComponents_SingletonC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "h"
.end annotation


# instance fields
.field private final a:Lcom/qennnsad/aknkaksd/f$k;

.field private final b:Lcom/qennnsad/aknkaksd/f$e;

.field private final c:Lcom/qennnsad/aknkaksd/f$c;

.field private final d:Lcom/qennnsad/aknkaksd/f$h;


# direct methods
.method private constructor <init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;Lcom/qennnsad/aknkaksd/f$c;Landroidx/fragment/app/Fragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl",
            "activityCImpl",
            "fragmentParam"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/d$e;-><init>()V

    .line 3
    iput-object p0, p0, Lcom/qennnsad/aknkaksd/f$h;->d:Lcom/qennnsad/aknkaksd/f$h;

    .line 4
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    .line 5
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/f$h;->b:Lcom/qennnsad/aknkaksd/f$e;

    .line 6
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/f$h;->c:Lcom/qennnsad/aknkaksd/f$c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;Lcom/qennnsad/aknkaksd/f$c;Landroidx/fragment/app/Fragment;Lcom/qennnsad/aknkaksd/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qennnsad/aknkaksd/f$h;-><init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;Lcom/qennnsad/aknkaksd/f$c;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method private A0(Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l;)Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/b;->c(Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->u(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/repository/m;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/b;->e(Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog;Lcom/qennnsad/aknkaksd/data/repository/m;)V

    return-object p1
.end method

.method private B0(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;)Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->d(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->t(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx4/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->c(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lx4/a;)V

    return-object p1
.end method

.method private C0(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vegan/VeganAnchorFragment;)Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vegan/VeganAnchorFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->d(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->t(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx4/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->c(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lx4/a;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->u(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/repository/m;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/d;->d(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;Lcom/qennnsad/aknkaksd/data/repository/m;)V

    return-object p1
.end method

.method private D0(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vip/VipAnchorFragment;)Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vip/VipAnchorFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->d(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->t(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx4/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->c(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lx4/a;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->u(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/repository/m;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/d;->d(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;Lcom/qennnsad/aknkaksd/data/repository/m;)V

    return-object p1
.end method

.method private E0()Lc5/g;
    .locals 3

    new-instance v0, Lc5/g;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/f$k;->K(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v1

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc5/b;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg5/a;

    invoke-direct {v0, v1, v2}, Lc5/g;-><init>(Lc5/b;Lg5/a;)V

    return-object v0
.end method

.method private R(Lcom/qennnsad/aknkaksd/presentation/ui/base/b;)Lcom/qennnsad/aknkaksd/presentation/ui/base/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->t(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx4/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/d;->c(Lcom/qennnsad/aknkaksd/presentation/ui/base/b;Lx4/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/d;->d(Lcom/qennnsad/aknkaksd/presentation/ui/base/b;Lg5/a;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->u(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/repository/m;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/d;->g(Lcom/qennnsad/aknkaksd/presentation/ui/base/b;Lcom/qennnsad/aknkaksd/data/repository/m;)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->v(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/util/q0;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/d;->f(Lcom/qennnsad/aknkaksd/presentation/ui/base/b;Lcom/qennnsad/aknkaksd/util/q0;)V

    return-object p1
.end method

.method private S(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment;)Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->d(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->t(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx4/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->c(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lx4/a;)V

    return-object p1
.end method

.method private T(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment;)Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->d(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->t(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx4/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->c(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lx4/a;)V

    return-object p1
.end method

.method private U(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;)Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/f;->d(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->u(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/repository/m;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/f;->f(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;Lcom/qennnsad/aknkaksd/data/repository/m;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->t(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx4/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/f;->c(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;Lx4/a;)V

    return-object p1
.end method

.method private V(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListFragment;)Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->d(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->t(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx4/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->c(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lx4/a;)V

    return-object p1
.end method

.method private W(Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsFragment;)Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->d(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->t(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx4/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->c(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lx4/a;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->u(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/repository/m;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/module/contributors/h;->e(Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsFragment;Lcom/qennnsad/aknkaksd/data/repository/m;)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->v(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/util/q0;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/module/contributors/h;->d(Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsFragment;Lcom/qennnsad/aknkaksd/util/q0;)V

    return-object p1
.end method

.method private X(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->d(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->t(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx4/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->c(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lx4/a;)V

    return-object p1
.end method

.method private Y(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorFragment;)Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->d(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->t(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx4/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->c(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lx4/a;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->u(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/repository/m;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/d;->d(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;Lcom/qennnsad/aknkaksd/data/repository/m;)V

    return-object p1
.end method

.method private Z(Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersFragment;)Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->d(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->t(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx4/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->c(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lx4/a;)V

    return-object p1
.end method

.method private a0(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/g;)Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->u(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/repository/m;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/i;->e(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/g;Lcom/qennnsad/aknkaksd/data/repository/m;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/i;->c(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/g;Lg5/a;)V

    return-object p1
.end method

.method private b0(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/HotAnchorFragment;)Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/HotAnchorFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->d(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->t(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx4/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->c(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lx4/a;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->u(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/repository/m;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/d;->d(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;Lcom/qennnsad/aknkaksd/data/repository/m;)V

    return-object p1
.end method

.method private c0(Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment;)Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->d(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->t(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx4/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->c(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lx4/a;)V

    return-object p1
.end method

.method private d0(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;)Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->d(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->t(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx4/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->c(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lx4/a;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->s(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/util/t0;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/p;->d(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;Lcom/qennnsad/aknkaksd/util/t0;)V

    return-object p1
.end method

.method private e0(Lcom/qennnsad/aknkaksd/presentation/ui/main/MainFragment;)Lcom/qennnsad/aknkaksd/presentation/ui/main/MainFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->d(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->t(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx4/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->c(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lx4/a;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->x(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/util/m1;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/u;->d(Lcom/qennnsad/aknkaksd/presentation/ui/main/MainFragment;Lcom/qennnsad/aknkaksd/util/m1;)V

    return-object p1
.end method

.method private f0(Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;)Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->d(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->t(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx4/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->c(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lx4/a;)V

    return-object p1
.end method

.method private g0(Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallFragment;)Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->d(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->t(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx4/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->c(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lx4/a;)V

    .line 3
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/f$h;->E0()Lc5/g;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/h;->e(Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallFragment;Lc5/g;)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->s(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/util/t0;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/h;->d(Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallFragment;Lcom/qennnsad/aknkaksd/util/t0;)V

    return-object p1
.end method

.method private h0(Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment;)Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->d(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->t(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx4/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->c(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lx4/a;)V

    return-object p1
.end method

.method private i0(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment;)Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->d(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->t(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx4/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->c(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lx4/a;)V

    return-object p1
.end method

.method private j0(Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/f;)Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/b;->c(Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->u(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/repository/m;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/b;->e(Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog;Lcom/qennnsad/aknkaksd/data/repository/m;)V

    return-object p1
.end method

.method private k0(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/nearby/NearbyAnchorFragment;)Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/nearby/NearbyAnchorFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->d(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->t(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx4/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->c(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lx4/a;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->u(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/repository/m;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/d;->d(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;Lcom/qennnsad/aknkaksd/data/repository/m;)V

    return-object p1
.end method

.method private l0(Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/h;)Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/h;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/b;->c(Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->u(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/repository/m;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/b;->e(Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog;Lcom/qennnsad/aknkaksd/data/repository/m;)V

    return-object p1
.end method

.method private m0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->t(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx4/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/d;->c(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;Lx4/a;)V

    return-object p1
.end method

.method private n0(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog;)Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/j;->d(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->y(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/websocket/j;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/j;->f(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog;Lcom/qennnsad/aknkaksd/data/websocket/j;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->t(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx4/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/j;->c(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog;Lx4/a;)V

    return-object p1
.end method

.method private o0(Lcom/qennnsad/aknkaksd/presentation/module/rank/RankFragment;)Lcom/qennnsad/aknkaksd/presentation/module/rank/RankFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->d(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->t(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx4/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->c(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lx4/a;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->u(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/repository/m;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/f;->e(Lcom/qennnsad/aknkaksd/presentation/module/rank/RankFragment;Lcom/qennnsad/aknkaksd/data/repository/m;)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->v(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/util/q0;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/f;->d(Lcom/qennnsad/aknkaksd/presentation/module/rank/RankFragment;Lcom/qennnsad/aknkaksd/util/q0;)V

    return-object p1
.end method

.method private p0(Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment;)Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->d(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->t(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx4/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->c(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lx4/a;)V

    return-object p1
.end method

.method private q0(Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;)Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->v(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/util/q0;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/f;->d(Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;Lcom/qennnsad/aknkaksd/util/q0;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->u(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/repository/m;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/f;->e(Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;Lcom/qennnsad/aknkaksd/data/repository/m;)V

    return-object p1
.end method

.method private r0(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;)Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->d(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->t(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx4/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->c(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lx4/a;)V

    return-object p1
.end method

.method private s0(Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment;)Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->u(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/repository/m;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/i;->f(Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment;Lcom/qennnsad/aknkaksd/data/repository/m;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/i;->d(Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment;Lg5/a;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->t(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx4/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/i;->c(Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment;Lx4/a;)V

    return-object p1
.end method

.method private t0(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;)Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/m;->c(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->y(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/websocket/j;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/m;->e(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;Lcom/qennnsad/aknkaksd/data/websocket/j;)V

    return-object p1
.end method

.method private u0(Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog;)Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/e;->c(Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->u(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/repository/m;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/e;->e(Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog;Lcom/qennnsad/aknkaksd/data/repository/m;)V

    return-object p1
.end method

.method private v0(Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;)Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->d(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->t(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx4/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->c(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lx4/a;)V

    return-object p1
.end method

.method private w0(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment;)Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->d(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->t(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx4/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->c(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lx4/a;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->w(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/util/q;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/z;->c(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment;Lcom/qennnsad/aknkaksd/util/q;)V

    return-object p1
.end method

.method private x0(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;)Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->d(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->t(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx4/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->c(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lx4/a;)V

    .line 3
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/f$h;->E0()Lc5/g;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/p;->e(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;Lc5/g;)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->s(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/util/t0;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/p;->d(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;Lcom/qennnsad/aknkaksd/util/t0;)V

    return-object p1
.end method

.method private y0(Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;)Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/i;->c(Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->u(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/repository/m;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/i;->e(Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;Lcom/qennnsad/aknkaksd/data/repository/m;)V

    return-object p1
.end method

.method private z0(Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;)Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->s(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/util/t0;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/m;->e(Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;Lcom/qennnsad/aknkaksd/util/t0;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/m;->c(Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;Lg5/a;)V

    return-object p1
.end method


# virtual methods
.method public A(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->m0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;

    return-void
.end method

.method public B(Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->v0(Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;)Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;

    return-void
.end method

.method public C(Lcom/qennnsad/aknkaksd/presentation/module/rank/RankFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->o0(Lcom/qennnsad/aknkaksd/presentation/module/rank/RankFragment;)Lcom/qennnsad/aknkaksd/presentation/module/rank/RankFragment;

    return-void
.end method

.method public D(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->x0(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;)Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;

    return-void
.end method

.method public E(Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->q0(Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;)Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;

    return-void
.end method

.method public F(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->w0(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment;)Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment;

    return-void
.end method

.method public G(Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->W(Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsFragment;)Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsFragment;

    return-void
.end method

.method public H(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->a0(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/g;)Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/g;

    return-void
.end method

.method public I(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/nearby/NearbyAnchorFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->k0(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/nearby/NearbyAnchorFragment;)Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/nearby/NearbyAnchorFragment;

    return-void
.end method

.method public J(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->t0(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;)Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;

    return-void
.end method

.method public K(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->V(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListFragment;)Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListFragment;

    return-void
.end method

.method public L(Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->j0(Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/f;)Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/f;

    return-void
.end method

.method public M(Lcom/qennnsad/aknkaksd/presentation/ui/main/MainFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->e0(Lcom/qennnsad/aknkaksd/presentation/ui/main/MainFragment;)Lcom/qennnsad/aknkaksd/presentation/ui/main/MainFragment;

    return-void
.end method

.method public N(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vegan/VeganAnchorFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->C0(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vegan/VeganAnchorFragment;)Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vegan/VeganAnchorFragment;

    return-void
.end method

.method public O(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vip/VipAnchorFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->D0(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vip/VipAnchorFragment;)Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vip/VipAnchorFragment;

    return-void
.end method

.method public P(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->T(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment;)Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment;

    return-void
.end method

.method public Q(Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->c0(Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment;)Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexFragment;

    return-void
.end method

.method public a()Ldagger/hilt/android/internal/lifecycle/a$d;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$h;->c:Lcom/qennnsad/aknkaksd/f$c;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/f$c;->a()Ldagger/hilt/android/internal/lifecycle/a$d;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/qennnsad/aknkaksd/presentation/ui/base/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->R(Lcom/qennnsad/aknkaksd/presentation/ui/base/b;)Lcom/qennnsad/aknkaksd/presentation/ui/base/b;

    return-void
.end method

.method public c(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->n0(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog;)Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog;

    return-void
.end method

.method public d(Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->Z(Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersFragment;)Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersFragment;

    return-void
.end method

.method public e(Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->p0(Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment;)Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListFragment;

    return-void
.end method

.method public f(Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->z0(Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;)Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;

    return-void
.end method

.method public g()Lh6/g;
    .locals 7

    new-instance v6, Lcom/qennnsad/aknkaksd/f$p;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$h;->a:Lcom/qennnsad/aknkaksd/f$k;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/f$h;->b:Lcom/qennnsad/aknkaksd/f$e;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/f$h;->c:Lcom/qennnsad/aknkaksd/f$c;

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/f$h;->d:Lcom/qennnsad/aknkaksd/f$h;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/qennnsad/aknkaksd/f$p;-><init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;Lcom/qennnsad/aknkaksd/f$c;Lcom/qennnsad/aknkaksd/f$h;Lcom/qennnsad/aknkaksd/f$a;)V

    return-object v6
.end method

.method public h(Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->f0(Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;)Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankFragment;

    return-void
.end method

.method public i(Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    return-void
.end method

.method public j(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    return-void
.end method

.method public k(Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->y0(Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;)Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;

    return-void
.end method

.method public l(Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->l0(Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/h;)Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/h;

    return-void
.end method

.method public m(Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->A0(Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l;)Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l;

    return-void
.end method

.method public n(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->i0(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment;)Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment;

    return-void
.end method

.method public o(Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->h0(Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment;)Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment;

    return-void
.end method

.method public p(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->B0(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;)Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;

    return-void
.end method

.method public q(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->U(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;)Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;

    return-void
.end method

.method public r(Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->u0(Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog;)Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog;

    return-void
.end method

.method public s(Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->g0(Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallFragment;)Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallFragment;

    return-void
.end method

.method public t(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/HotAnchorFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->b0(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/HotAnchorFragment;)Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/HotAnchorFragment;

    return-void
.end method

.method public u(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->r0(Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;)Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordFragment;

    return-void
.end method

.method public v(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->d0(Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;)Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginFragment;

    return-void
.end method

.method public w(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->X(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;

    return-void
.end method

.method public x(Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->s0(Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment;)Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment;

    return-void
.end method

.method public y(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->Y(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorFragment;)Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorFragment;

    return-void
.end method

.method public z(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$h;->S(Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment;)Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment;

    return-void
.end method
