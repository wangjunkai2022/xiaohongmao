.class final Lcom/qennnsad/aknkaksd/f$o$a;
.super Ljava/lang/Object;
.source "DaggerBeautyLiveApplication_HiltComponents_SingletonC.java"

# interfaces
.implements Lu7/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/f$o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lu7/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/qennnsad/aknkaksd/f$k;

.field private final b:Lcom/qennnsad/aknkaksd/f$e;

.field private final c:Lcom/qennnsad/aknkaksd/f$o;

.field private final d:I


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;Lcom/qennnsad/aknkaksd/f$o;I)V
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
            "viewModelCImpl",
            "id"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/f$o$a;->b:Lcom/qennnsad/aknkaksd/f$e;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    .line 5
    iput p4, p0, Lcom/qennnsad/aknkaksd/f$o$a;->d:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/qennnsad/aknkaksd/f$o$a;->d:I

    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->d:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 3
    :pswitch_0
    iget-object v1, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vip/c;->c()Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vip/VipAnchorViewModel;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qennnsad/aknkaksd/f$o;->f(Lcom/qennnsad/aknkaksd/f$o;Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vip/VipAnchorViewModel;)Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vip/VipAnchorViewModel;

    move-result-object v1

    return-object v1

    .line 4
    :pswitch_1
    iget-object v1, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vegan/c;->c()Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vegan/VeganAnchorViewModel;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qennnsad/aknkaksd/f$o;->e(Lcom/qennnsad/aknkaksd/f$o;Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vegan/VeganAnchorViewModel;)Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vegan/VeganAnchorViewModel;

    move-result-object v1

    return-object v1

    .line 5
    :pswitch_2
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lg5/a;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->u(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/qennnsad/aknkaksd/data/repository/m;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->k(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/other_user/j;

    move-result-object v5

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->b(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/anchor/c;

    move-result-object v6

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->P(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;

    move-result-object v7

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->a0(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;

    move-result-object v8

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->c(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/other_user/c;

    move-result-object v9

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->d(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/other_user/m;

    move-result-object v10

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;-><init>(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/j;Lcom/qennnsad/aknkaksd/domain/usecase/anchor/c;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/c;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/m;)V

    return-object v1

    .line 6
    :pswitch_3
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateViewModel;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->x(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qennnsad/aknkaksd/util/m1;

    invoke-direct {v1, v2}, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateViewModel;-><init>(Lcom/qennnsad/aknkaksd/util/m1;)V

    return-object v1

    .line 7
    :pswitch_4
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg5/a;

    iget-object v3, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v3}, Lcom/qennnsad/aknkaksd/f$o;->s0(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/room/k;

    move-result-object v3

    iget-object v4, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v4}, Lcom/qennnsad/aknkaksd/f$k;->t(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v4

    invoke-interface {v4}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx4/a;

    invoke-direct {v1, v2, v3, v4}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;-><init>(Lg5/a;Lcom/qennnsad/aknkaksd/domain/usecase/room/k;Lx4/a;)V

    return-object v1

    .line 8
    :pswitch_5
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashViewModel;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->i(Lcom/qennnsad/aknkaksd/f$o;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v6

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->p0(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/app/o;

    move-result-object v7

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->q0(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/app/l;

    move-result-object v8

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->r0(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/app/g;

    move-result-object v9

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->B(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;

    move-result-object v10

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lg5/a;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->D(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/qennnsad/aknkaksd/util/JwtUtil;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->B(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->t(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lx4/a;

    move-object v5, v1

    invoke-direct/range {v5 .. v14}, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashViewModel;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/qennnsad/aknkaksd/domain/usecase/app/o;Lcom/qennnsad/aknkaksd/domain/usecase/app/l;Lcom/qennnsad/aknkaksd/domain/usecase/app/g;Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;Lg5/a;Lcom/qennnsad/aknkaksd/util/JwtUtil;Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;Lx4/a;)V

    return-object v1

    .line 9
    :pswitch_6
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->u(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qennnsad/aknkaksd/data/repository/m;

    iget-object v3, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v3}, Lcom/qennnsad/aknkaksd/f$o;->J(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/webview/b;

    move-result-object v3

    iget-object v4, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v4}, Lcom/qennnsad/aknkaksd/f$o;->o0(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewViewModel;-><init>(Lcom/qennnsad/aknkaksd/data/repository/m;Lcom/qennnsad/aknkaksd/domain/usecase/webview/b;Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b;)V

    return-object v1

    .line 10
    :pswitch_7
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->C(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;

    move-result-object v6

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->D(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;

    move-result-object v7

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->m0(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/auth/e0;

    move-result-object v8

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->n0(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/auth/t;

    move-result-object v9

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lg5/a;

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;-><init>(Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;Lcom/qennnsad/aknkaksd/domain/usecase/auth/e0;Lcom/qennnsad/aknkaksd/domain/usecase/auth/t;Lg5/a;)V

    return-object v1

    .line 11
    :pswitch_8
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lg5/a;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->u(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/qennnsad/aknkaksd/data/repository/m;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->t(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lx4/a;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->h0(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/j;

    move-result-object v15

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->i0(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/f;

    move-result-object v16

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->j0(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/anchor/s;

    move-result-object v17

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->k0(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/auth/r;

    move-result-object v18

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->l0(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/room/e;

    move-result-object v19

    move-object v11, v1

    invoke-direct/range {v11 .. v19}, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;-><init>(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Lx4/a;Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/j;Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/f;Lcom/qennnsad/aknkaksd/domain/usecase/anchor/s;Lcom/qennnsad/aknkaksd/domain/usecase/auth/r;Lcom/qennnsad/aknkaksd/domain/usecase/room/e;)V

    return-object v1

    .line 12
    :pswitch_9
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsViewModel;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->e0(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/user/k1;

    move-result-object v2

    iget-object v3, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v3}, Lcom/qennnsad/aknkaksd/f$o;->f0(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/user/o1;

    move-result-object v3

    iget-object v4, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v4}, Lcom/qennnsad/aknkaksd/f$o;->g0(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/auth/c0;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsViewModel;-><init>(Lcom/qennnsad/aknkaksd/domain/usecase/user/k1;Lcom/qennnsad/aknkaksd/domain/usecase/user/o1;Lcom/qennnsad/aknkaksd/domain/usecase/auth/c0;)V

    return-object v1

    .line 13
    :pswitch_a
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsViewModelProvider;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->G(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/im/freechat/sdk/d;

    invoke-direct {v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/SettingsViewModelProvider;-><init>(Lcom/im/freechat/sdk/d;)V

    return-object v1

    .line 14
    :pswitch_b
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lg5/a;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->u(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/qennnsad/aknkaksd/data/repository/m;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->t(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lx4/a;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->d0(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/anchor/p;

    move-result-object v7

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->P(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;

    move-result-object v8

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->a0(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;

    move-result-object v9

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserViewModel;-><init>(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Lx4/a;Lcom/qennnsad/aknkaksd/domain/usecase/anchor/p;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;)V

    return-object v1

    .line 15
    :pswitch_c
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->i(Lcom/qennnsad/aknkaksd/f$o;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v2

    iget-object v3, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v3}, Lcom/qennnsad/aknkaksd/f$o;->c0(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/e;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/qennnsad/aknkaksd/domain/usecase/e;)V

    return-object v1

    .line 16
    :pswitch_d
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->D(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;

    move-result-object v2

    iget-object v3, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v3}, Lcom/qennnsad/aknkaksd/f$o;->C(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;

    move-result-object v3

    iget-object v4, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v4}, Lcom/qennnsad/aknkaksd/f$o;->b0(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/auth/j;

    move-result-object v4

    iget-object v5, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v5}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v5

    invoke-interface {v5}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg5/a;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/RestorePasswordViewModel;-><init>(Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;Lcom/qennnsad/aknkaksd/domain/usecase/auth/j;Lg5/a;)V

    return-object v1

    .line 17
    :pswitch_e
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->i(Lcom/qennnsad/aknkaksd/f$o;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v7

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->Z(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/h;

    move-result-object v8

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->P(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;

    move-result-object v9

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->a0(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;

    move-result-object v10

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lg5/a;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->I(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/qennnsad/aknkaksd/presentation/ui/main/y;

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Lcom/qennnsad/aknkaksd/presentation/module/rank/RankViewModel;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/qennnsad/aknkaksd/domain/usecase/h;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;Lg5/a;Lcom/qennnsad/aknkaksd/presentation/ui/main/y;)V

    return-object v1

    .line 18
    :pswitch_f
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->i(Lcom/qennnsad/aknkaksd/f$o;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v14

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->Z(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/h;

    move-result-object v15

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->P(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;

    move-result-object v16

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->a0(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;

    move-result-object v17

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lg5/a;

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/qennnsad/aknkaksd/domain/usecase/h;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;Lg5/a;)V

    return-object v1

    .line 19
    :pswitch_10
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->i(Lcom/qennnsad/aknkaksd/f$o;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v2

    iget-object v3, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v3}, Lcom/qennnsad/aknkaksd/f$k;->I(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v3

    invoke-interface {v3}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qennnsad/aknkaksd/presentation/ui/main/y;

    invoke-direct {v1, v2, v3}, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/RankListViewModel;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/qennnsad/aknkaksd/presentation/ui/main/y;)V

    return-object v1

    .line 20
    :pswitch_11
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-object v4, v1

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->u(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/qennnsad/aknkaksd/data/repository/m;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lg5/a;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->t(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lx4/a;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->O(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/room/n;

    move-result-object v8

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->H(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/user/e0;

    move-result-object v9

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->k(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/other_user/j;

    move-result-object v10

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->P(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;

    move-result-object v11

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->K(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/user/a0;

    move-result-object v12

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->Q(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/user/h;

    move-result-object v13

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->R(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/room/b;

    move-result-object v14

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->J(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/e;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->S(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/room/q;

    move-result-object v16

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->T(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/room/a0;

    move-result-object v17

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->U(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/room/e0;

    move-result-object v18

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->V(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i;

    move-result-object v19

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->u(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f;

    move-result-object v20

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->W(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/room/x;

    move-result-object v21

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->X(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/room/t;

    move-result-object v22

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->Y(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/room/h;

    move-result-object v23

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->y(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Lcom/qennnsad/aknkaksd/data/websocket/j;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->z(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Lcom/qennnsad/aknkaksd/util/e0;

    invoke-direct/range {v4 .. v25}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;-><init>(Lcom/qennnsad/aknkaksd/data/repository/m;Lg5/a;Lx4/a;Lcom/qennnsad/aknkaksd/domain/usecase/room/n;Lcom/qennnsad/aknkaksd/domain/usecase/user/e0;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/j;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;Lcom/qennnsad/aknkaksd/domain/usecase/user/a0;Lcom/qennnsad/aknkaksd/domain/usecase/user/h;Lcom/qennnsad/aknkaksd/domain/usecase/room/b;Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/e;Lcom/qennnsad/aknkaksd/domain/usecase/room/q;Lcom/qennnsad/aknkaksd/domain/usecase/room/a0;Lcom/qennnsad/aknkaksd/domain/usecase/room/e0;Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i;Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f;Lcom/qennnsad/aknkaksd/domain/usecase/room/x;Lcom/qennnsad/aknkaksd/domain/usecase/room/t;Lcom/qennnsad/aknkaksd/domain/usecase/room/h;Lcom/qennnsad/aknkaksd/data/websocket/j;Lcom/qennnsad/aknkaksd/util/e0;)V

    return-object v1

    .line 21
    :pswitch_12
    iget-object v1, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/nearby/c;->c()Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/nearby/NearbyAnchorViewModel;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qennnsad/aknkaksd/f$o;->N(Lcom/qennnsad/aknkaksd/f$o;Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/nearby/NearbyAnchorViewModel;)Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/nearby/NearbyAnchorViewModel;

    move-result-object v1

    return-object v1

    .line 22
    :pswitch_13
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordViewModel;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->M(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/user/k;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordViewModel;-><init>(Lcom/qennnsad/aknkaksd/domain/usecase/user/k;)V

    return-object v1

    .line 23
    :pswitch_14
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->u(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/qennnsad/aknkaksd/data/repository/m;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->t(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lx4/a;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->l(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/user/w;

    move-result-object v6

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->H(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/user/e0;

    move-result-object v7

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->K(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/user/a0;

    move-result-object v8

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->L(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/user/s;

    move-result-object v9

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->t(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/user/s1;

    move-result-object v10

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel;-><init>(Lcom/qennnsad/aknkaksd/data/repository/m;Lx4/a;Lcom/qennnsad/aknkaksd/domain/usecase/user/w;Lcom/qennnsad/aknkaksd/domain/usecase/user/e0;Lcom/qennnsad/aknkaksd/domain/usecase/user/a0;Lcom/qennnsad/aknkaksd/domain/usecase/user/s;Lcom/qennnsad/aknkaksd/domain/usecase/user/s1;)V

    return-object v1

    .line 24
    :pswitch_15
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->J(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/webview/b;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel;-><init>(Lcom/qennnsad/aknkaksd/domain/usecase/webview/b;)V

    return-object v1

    .line 25
    :pswitch_16
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lg5/a;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->E(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/app/c;

    move-result-object v5

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->F(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/app/w;

    move-result-object v6

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->G(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;

    move-result-object v7

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->l(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/user/w;

    move-result-object v8

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->H(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/user/e0;

    move-result-object v9

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->I(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/room/i0;

    move-result-object v10

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel;-><init>(Lg5/a;Lcom/qennnsad/aknkaksd/domain/usecase/app/c;Lcom/qennnsad/aknkaksd/domain/usecase/app/w;Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;Lcom/qennnsad/aknkaksd/domain/usecase/user/w;Lcom/qennnsad/aknkaksd/domain/usecase/user/e0;Lcom/qennnsad/aknkaksd/domain/usecase/room/i0;)V

    return-object v1

    .line 26
    :pswitch_17
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->I(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qennnsad/aknkaksd/presentation/ui/main/y;

    invoke-direct {v1, v2}, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/MainRankViewModel;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/y;)V

    return-object v1

    .line 27
    :pswitch_18
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lg5/a;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->y(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/app/s;

    move-result-object v5

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->z(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/user/a;

    move-result-object v6

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->A(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/auth/x;

    move-result-object v7

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->B(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;

    move-result-object v8

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->C(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;

    move-result-object v9

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->D(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;

    move-result-object v10

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;-><init>(Lg5/a;Lcom/qennnsad/aknkaksd/domain/usecase/app/s;Lcom/qennnsad/aknkaksd/domain/usecase/user/a;Lcom/qennnsad/aknkaksd/domain/usecase/auth/x;Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;)V

    return-object v1

    .line 28
    :pswitch_19
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexViewModel;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg5/a;

    invoke-direct {v1, v2}, Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexViewModel;-><init>(Lg5/a;)V

    return-object v1

    .line 29
    :pswitch_1a
    iget-object v1, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/c;->c()Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/HotAnchorViewModel;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qennnsad/aknkaksd/f$o;->x(Lcom/qennnsad/aknkaksd/f$o;Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/HotAnchorViewModel;)Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/HotAnchorViewModel;

    move-result-object v1

    return-object v1

    .line 30
    :pswitch_1b
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersViewModel;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->i(Lcom/qennnsad/aknkaksd/f$o;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v2

    iget-object v3, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v3}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v3

    invoke-interface {v3}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg5/a;

    iget-object v4, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v4}, Lcom/qennnsad/aknkaksd/f$k;->u(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v4

    invoke-interface {v4}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qennnsad/aknkaksd/data/repository/m;

    iget-object v5, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v5}, Lcom/qennnsad/aknkaksd/f$o;->w(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/anchor/m;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersViewModel;-><init>(Landroidx/lifecycle/SavedStateHandle;Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Lcom/qennnsad/aknkaksd/domain/usecase/anchor/m;)V

    return-object v1

    .line 31
    :pswitch_1c
    iget-object v1, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg5/a;

    iget-object v3, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v3}, Lcom/qennnsad/aknkaksd/f$o;->u(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/e;->c(Lg5/a;Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f;)Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qennnsad/aknkaksd/f$o;->v(Lcom/qennnsad/aknkaksd/f$o;Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel;)Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel;

    move-result-object v1

    return-object v1

    .line 32
    :pswitch_1d
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileViewModel;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->u(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/qennnsad/aknkaksd/data/repository/m;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->m(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/user/g1;

    move-result-object v4

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->n(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/user/y0;

    move-result-object v5

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->o(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/user/c1;

    move-result-object v6

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->p(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/user/m0;

    move-result-object v7

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->q(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/user/u0;

    move-result-object v8

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->r(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/user/i0;

    move-result-object v9

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->s(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/user/q0;

    move-result-object v10

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->t(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/user/s1;

    move-result-object v11

    move-object v2, v1

    invoke-direct/range {v2 .. v11}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileViewModel;-><init>(Lcom/qennnsad/aknkaksd/data/repository/m;Lcom/qennnsad/aknkaksd/domain/usecase/user/g1;Lcom/qennnsad/aknkaksd/domain/usecase/user/y0;Lcom/qennnsad/aknkaksd/domain/usecase/user/c1;Lcom/qennnsad/aknkaksd/domain/usecase/user/m0;Lcom/qennnsad/aknkaksd/domain/usecase/user/u0;Lcom/qennnsad/aknkaksd/domain/usecase/user/i0;Lcom/qennnsad/aknkaksd/domain/usecase/user/q0;Lcom/qennnsad/aknkaksd/domain/usecase/user/s1;)V

    return-object v1

    .line 33
    :pswitch_1e
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsViewModel;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->i(Lcom/qennnsad/aknkaksd/f$o;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v13

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->j(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/b;

    move-result-object v14

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->k(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/other_user/j;

    move-result-object v15

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$o;->l(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/user/w;

    move-result-object v16

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lg5/a;

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsViewModel;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/qennnsad/aknkaksd/domain/usecase/b;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/j;Lcom/qennnsad/aknkaksd/domain/usecase/user/w;Lg5/a;)V

    return-object v1

    .line 34
    :pswitch_1f
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListViewModel;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->H(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/im/freechat/sdk/a;

    invoke-direct {v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListViewModel;-><init>(Lcom/im/freechat/sdk/a;)V

    return-object v1

    .line 35
    :pswitch_20
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatViewModel;

    invoke-direct {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatViewModel;-><init>()V

    return-object v1

    .line 36
    :pswitch_21
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListViewModelProvider;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->G(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/im/freechat/sdk/d;

    invoke-direct {v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListViewModelProvider;-><init>(Lcom/im/freechat/sdk/d;)V

    return-object v1

    .line 37
    :pswitch_22
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/f$o$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->u(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qennnsad/aknkaksd/data/repository/m;

    iget-object v3, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v3}, Lcom/qennnsad/aknkaksd/f$o;->g(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/user/d;

    move-result-object v3

    iget-object v4, v0, Lcom/qennnsad/aknkaksd/f$o$a;->c:Lcom/qennnsad/aknkaksd/f$o;

    invoke-static {v4}, Lcom/qennnsad/aknkaksd/f$o;->h(Lcom/qennnsad/aknkaksd/f$o;)Lcom/qennnsad/aknkaksd/domain/usecase/user/n;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel;-><init>(Lcom/qennnsad/aknkaksd/data/repository/m;Lcom/qennnsad/aknkaksd/domain/usecase/user/d;Lcom/qennnsad/aknkaksd/domain/usecase/user/n;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
