.class final Lcom/qennnsad/aknkaksd/f$k$a;
.super Ljava/lang/Object;
.source "DaggerBeautyLiveApplication_HiltComponents_SingletonC.java"

# interfaces
.implements Lu7/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/f$k;
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

.field private final b:I


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/f$k;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "id"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    .line 3
    iput p2, p0, Lcom/qennnsad/aknkaksd/f$k$a;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/qennnsad/aknkaksd/f$k$a;->b:I

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Lcom/qennnsad/aknkaksd/f$k$a;->b:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 3
    :pswitch_0
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/e;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v1

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg5/a;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->D(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qennnsad/aknkaksd/util/JwtUtil;

    invoke-direct {v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/e;-><init>(Lg5/a;Lcom/qennnsad/aknkaksd/util/JwtUtil;)V

    return-object v0

    .line 4
    :pswitch_1
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/y;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/f$k;->m(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v1

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg5/a;

    invoke-direct {v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/y;-><init>(Landroid/content/Context;Lg5/a;)V

    return-object v0

    .line 5
    :pswitch_2
    new-instance v0, Lcom/qennnsad/aknkaksd/util/JwtUtil;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v1

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg5/a;

    invoke-direct {v0, v1}, Lcom/qennnsad/aknkaksd/util/JwtUtil;-><init>(Lg5/a;)V

    return-object v0

    .line 6
    :pswitch_3
    new-instance v0, Lg5/f;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/f$k;->u(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v1

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qennnsad/aknkaksd/data/repository/m;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->k(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/Gson;

    invoke-direct {v0, v1, v2}, Lg5/f;-><init>(Lcom/qennnsad/aknkaksd/data/repository/m;Lcom/google/gson/Gson;)V

    return-object v0

    .line 7
    :pswitch_4
    new-instance v0, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/f$k;->s(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v1

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qennnsad/aknkaksd/util/t0;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->u(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qennnsad/aknkaksd/data/repository/m;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v3}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v3

    invoke-interface {v3}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg5/a;

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v4}, Lcom/qennnsad/aknkaksd/f$k;->F(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v4

    invoke-interface {v4}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qennnsad/aknkaksd/data/repository/dns/h;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;-><init>(Lcom/qennnsad/aknkaksd/util/t0;Lcom/qennnsad/aknkaksd/data/repository/m;Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/dns/h;)V

    return-object v0

    .line 8
    :pswitch_5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->l(Lcom/qennnsad/aknkaksd/f$k;)Lf5/g;

    move-result-object v0

    invoke-static {v0}, Lf5/h;->c(Lf5/g;)Lcom/im/freechat/sdk/a;

    move-result-object v0

    return-object v0

    .line 9
    :pswitch_6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->l(Lcom/qennnsad/aknkaksd/f$k;)Lf5/g;

    move-result-object v0

    invoke-static {v0}, Lf5/j;->c(Lf5/g;)Lcom/im/freechat/sdk/d;

    move-result-object v0

    return-object v0

    .line 10
    :pswitch_7
    new-instance v0, Lcom/qennnsad/aknkaksd/util/q;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v1

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg5/a;

    invoke-direct {v0, v1}, Lcom/qennnsad/aknkaksd/util/q;-><init>(Lg5/a;)V

    return-object v0

    .line 11
    :pswitch_8
    new-instance v0, Lcom/qennnsad/aknkaksd/util/q0;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/f$k;->E(Lcom/qennnsad/aknkaksd/f$k;)Ldagger/hilt/android/internal/modules/c;

    move-result-object v1

    invoke-static {v1}, Ldagger/hilt/android/internal/modules/e;->c(Ldagger/hilt/android/internal/modules/c;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg5/a;

    invoke-direct {v0, v1, v2}, Lcom/qennnsad/aknkaksd/util/q0;-><init>(Landroid/content/Context;Lg5/a;)V

    return-object v0

    .line 12
    :pswitch_9
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->n(Lcom/qennnsad/aknkaksd/f$k;)Lf5/a;

    move-result-object v0

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/f$k;->E(Lcom/qennnsad/aknkaksd/f$k;)Ldagger/hilt/android/internal/modules/c;

    move-result-object v1

    invoke-static {v1}, Ldagger/hilt/android/internal/modules/e;->c(Ldagger/hilt/android/internal/modules/c;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lf5/c;->c(Lf5/a;Landroid/content/Context;)Landroid/app/DownloadManager;

    move-result-object v0

    return-object v0

    .line 13
    :pswitch_a
    new-instance v0, Lcom/qennnsad/aknkaksd/util/m1;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/f$k;->m(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v1

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg5/a;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v3}, Lcom/qennnsad/aknkaksd/f$k;->r(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v3

    invoke-interface {v3}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/DownloadManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/util/m1;-><init>(Landroid/content/Context;Lg5/a;Landroid/app/DownloadManager;)V

    return-object v0

    .line 14
    :pswitch_b
    new-instance v0, Lcom/qennnsad/aknkaksd/util/translation/d;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/f$k;->u(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v1

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qennnsad/aknkaksd/data/repository/m;

    invoke-direct {v0, v1}, Lcom/qennnsad/aknkaksd/util/translation/d;-><init>(Lcom/qennnsad/aknkaksd/data/repository/m;)V

    return-object v0

    .line 15
    :pswitch_c
    new-instance v0, Lcom/qennnsad/aknkaksd/util/translation/h;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/f$k;->q(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v1

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qennnsad/aknkaksd/util/translation/d;

    invoke-direct {v0, v1}, Lcom/qennnsad/aknkaksd/util/translation/h;-><init>(Lcom/qennnsad/aknkaksd/util/translation/d;)V

    return-object v0

    .line 16
    :pswitch_d
    new-instance v0, Lcom/qennnsad/aknkaksd/util/e0;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v1

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg5/a;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->u(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qennnsad/aknkaksd/data/repository/m;

    invoke-direct {v0, v1, v2}, Lcom/qennnsad/aknkaksd/util/e0;-><init>(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;)V

    return-object v0

    .line 17
    :pswitch_e
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->E(Lcom/qennnsad/aknkaksd/f$k;)Ldagger/hilt/android/internal/modules/c;

    move-result-object v0

    invoke-static {v0}, Ldagger/hilt/android/internal/modules/e;->c(Ldagger/hilt/android/internal/modules/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v1

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg5/a;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->z(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qennnsad/aknkaksd/util/e0;

    invoke-static {v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/d;->c(Landroid/content/Context;Lg5/a;Lcom/qennnsad/aknkaksd/util/e0;)Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    move-result-object v0

    return-object v0

    .line 18
    :pswitch_f
    new-instance v0, Lcom/qennnsad/aknkaksd/data/repository/dns/h;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v1

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg5/a;

    invoke-direct {v0, v1}, Lcom/qennnsad/aknkaksd/data/repository/dns/h;-><init>(Lg5/a;)V

    return-object v0

    .line 19
    :pswitch_10
    new-instance v0, Lcom/qennnsad/aknkaksd/data/websocket/j;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/f$k;->h(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v1

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg5/a;

    invoke-direct {v0, v1, v2}, Lcom/qennnsad/aknkaksd/data/websocket/j;-><init>(Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;Lg5/a;)V

    return-object v0

    .line 20
    :pswitch_11
    new-instance v0, Lc5/b;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v1

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg5/a;

    invoke-direct {v0, v1}, Lc5/b;-><init>(Lg5/a;)V

    return-object v0

    .line 21
    :pswitch_12
    new-instance v0, Lg5/d;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/f$k;->h(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v1

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->g(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;

    invoke-direct {v0, v1, v2}, Lg5/d;-><init>(Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;)V

    return-object v0

    .line 22
    :pswitch_13
    new-instance v0, Lcom/qennnsad/aknkaksd/util/t0;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/f$k;->E(Lcom/qennnsad/aknkaksd/f$k;)Ldagger/hilt/android/internal/modules/c;

    move-result-object v1

    invoke-static {v1}, Ldagger/hilt/android/internal/modules/e;->c(Ldagger/hilt/android/internal/modules/c;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg5/a;

    invoke-direct {v0, v1, v2}, Lcom/qennnsad/aknkaksd/util/t0;-><init>(Landroid/content/Context;Lg5/a;)V

    return-object v0

    .line 23
    :pswitch_14
    new-instance v0, Lcom/qennnsad/aknkaksd/data/repository/m;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v1

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg5/a;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->s(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qennnsad/aknkaksd/util/t0;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v3}, Lcom/qennnsad/aknkaksd/f$k;->p(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v3

    invoke-interface {v3}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg5/d;

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v4}, Lcom/qennnsad/aknkaksd/f$k;->K(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v4

    invoke-interface {v4}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc5/b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/qennnsad/aknkaksd/data/repository/m;-><init>(Lg5/a;Lcom/qennnsad/aknkaksd/util/t0;Lg5/d;Lc5/b;)V

    return-object v0

    .line 24
    :pswitch_15
    new-instance v0, Lf5/e;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v1

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lg5/a;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/f$k;->u(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v1

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/qennnsad/aknkaksd/data/repository/m;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/f$k;->t(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v1

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lx4/a;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/f$k;->s(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v1

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/qennnsad/aknkaksd/util/t0;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/f$k;->y(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v1

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/qennnsad/aknkaksd/data/websocket/j;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/f$k;->F(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v1

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/qennnsad/aknkaksd/data/repository/dns/h;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/f$k;->A(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v1

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/f$k;->o(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v1

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/qennnsad/aknkaksd/util/translation/h;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/f$k;->K(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v1

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lc5/b;

    move-object v5, v0

    invoke-direct/range {v5 .. v14}, Lf5/e;-><init>(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Lx4/a;Lcom/qennnsad/aknkaksd/util/t0;Lcom/qennnsad/aknkaksd/data/websocket/j;Lcom/qennnsad/aknkaksd/data/repository/dns/h;Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;Lcom/qennnsad/aknkaksd/util/translation/h;Lc5/b;)V

    return-object v0

    .line 25
    :pswitch_16
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->n(Lcom/qennnsad/aknkaksd/f$k;)Lf5/a;

    move-result-object v0

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/f$k;->E(Lcom/qennnsad/aknkaksd/f$k;)Ldagger/hilt/android/internal/modules/c;

    move-result-object v1

    invoke-static {v1}, Ldagger/hilt/android/internal/modules/e;->c(Ldagger/hilt/android/internal/modules/c;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lf5/b;->c(Lf5/a;Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    return-object v0

    .line 26
    :pswitch_17
    new-instance v0, Ly4/e;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/f$k;->m(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v1

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Ly4/e;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 27
    :pswitch_18
    new-instance v0, Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/f$k;->E(Lcom/qennnsad/aknkaksd/f$k;)Ldagger/hilt/android/internal/modules/c;

    move-result-object v1

    invoke-static {v1}, Ldagger/hilt/android/internal/modules/e;->c(Ldagger/hilt/android/internal/modules/c;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 28
    :pswitch_19
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->l(Lcom/qennnsad/aknkaksd/f$k;)Lf5/g;

    move-result-object v0

    invoke-static {v0}, Lf5/i;->c(Lf5/g;)Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0

    .line 29
    :pswitch_1a
    new-instance v0, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/f$k;->E(Lcom/qennnsad/aknkaksd/f$k;)Ldagger/hilt/android/internal/modules/c;

    move-result-object v1

    invoke-static {v1}, Ldagger/hilt/android/internal/modules/e;->c(Ldagger/hilt/android/internal/modules/c;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 30
    :pswitch_1b
    new-instance v0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/f$k;->j(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v1

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->k(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/Gson;

    invoke-direct {v0, v1, v2}, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;-><init>(Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;Lcom/google/gson/Gson;)V

    return-object v0

    .line 31
    :pswitch_1c
    new-instance v0, Lg5/a;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/f$k;->h(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v1

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;

    invoke-direct {v0, v1}, Lg5/a;-><init>(Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;)V

    return-object v0

    .line 32
    :pswitch_1d
    new-instance v0, Lx4/a;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v1

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg5/a;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/f$k;->g(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v2

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v3}, Lcom/qennnsad/aknkaksd/f$k;->h(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v3

    invoke-interface {v3}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/f$k$a;->a:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v4}, Lcom/qennnsad/aknkaksd/f$k;->i(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v4

    invoke-interface {v4}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly4/e;

    invoke-direct {v0, v1, v2, v3, v4}, Lx4/a;-><init>(Lg5/a;Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;Ly4/e;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
