.class public final Lcom/qennnsad/aknkaksd/presentation/module/splash/n;
.super Ljava/lang/Object;
.source "SplashViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/h;


# annotations
.annotation build Ldagger/internal/e;
.end annotation

.annotation build Ldagger/internal/r;
.end annotation

.annotation build Ldagger/internal/s;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/h<",
        "Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Landroidx/lifecycle/SavedStateHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/app/o;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/app/l;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/app/g;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lg5/a;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/util/JwtUtil;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lx4/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Landroidx/lifecycle/SavedStateHandle;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/app/o;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/app/l;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/app/g;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;",
            ">;",
            "Lu7/c<",
            "Lg5/a;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/util/JwtUtil;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;",
            ">;",
            "Lu7/c<",
            "Lx4/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/n;->a:Lu7/c;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/n;->b:Lu7/c;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/n;->c:Lu7/c;

    .line 5
    iput-object p4, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/n;->d:Lu7/c;

    .line 6
    iput-object p5, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/n;->e:Lu7/c;

    .line 7
    iput-object p6, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/n;->f:Lu7/c;

    .line 8
    iput-object p7, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/n;->g:Lu7/c;

    .line 9
    iput-object p8, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/n;->h:Lu7/c;

    .line 10
    iput-object p9, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/n;->i:Lu7/c;

    return-void
.end method

.method public static a(Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;)Lcom/qennnsad/aknkaksd/presentation/module/splash/n;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Landroidx/lifecycle/SavedStateHandle;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/app/o;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/app/l;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/app/g;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;",
            ">;",
            "Lu7/c<",
            "Lg5/a;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/util/JwtUtil;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;",
            ">;",
            "Lu7/c<",
            "Lx4/a;",
            ">;)",
            "Lcom/qennnsad/aknkaksd/presentation/module/splash/n;"
        }
    .end annotation

    new-instance v10, Lcom/qennnsad/aknkaksd/presentation/module/splash/n;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/qennnsad/aknkaksd/presentation/module/splash/n;-><init>(Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;)V

    return-object v10
.end method

.method public static c(Landroidx/lifecycle/SavedStateHandle;Lcom/qennnsad/aknkaksd/domain/usecase/app/o;Lcom/qennnsad/aknkaksd/domain/usecase/app/l;Lcom/qennnsad/aknkaksd/domain/usecase/app/g;Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;Lg5/a;Lcom/qennnsad/aknkaksd/util/JwtUtil;Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;Lx4/a;)Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashViewModel;
    .locals 11

    new-instance v10, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashViewModel;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashViewModel;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/qennnsad/aknkaksd/domain/usecase/app/o;Lcom/qennnsad/aknkaksd/domain/usecase/app/l;Lcom/qennnsad/aknkaksd/domain/usecase/app/g;Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;Lg5/a;Lcom/qennnsad/aknkaksd/util/JwtUtil;Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;Lx4/a;)V

    return-object v10
.end method


# virtual methods
.method public b()Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashViewModel;
    .locals 10

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/n;->a:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/lifecycle/SavedStateHandle;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/n;->b:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/qennnsad/aknkaksd/domain/usecase/app/o;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/n;->c:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/qennnsad/aknkaksd/domain/usecase/app/l;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/n;->d:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/qennnsad/aknkaksd/domain/usecase/app/g;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/n;->e:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/n;->f:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lg5/a;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/n;->g:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/qennnsad/aknkaksd/util/JwtUtil;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/n;->h:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/n;->i:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lx4/a;

    invoke-static/range {v1 .. v9}, Lcom/qennnsad/aknkaksd/presentation/module/splash/n;->c(Landroidx/lifecycle/SavedStateHandle;Lcom/qennnsad/aknkaksd/domain/usecase/app/o;Lcom/qennnsad/aknkaksd/domain/usecase/app/l;Lcom/qennnsad/aknkaksd/domain/usecase/app/g;Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;Lg5/a;Lcom/qennnsad/aknkaksd/util/JwtUtil;Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver;Lx4/a;)Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/splash/n;->b()Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashViewModel;

    move-result-object v0

    return-object v0
.end method
