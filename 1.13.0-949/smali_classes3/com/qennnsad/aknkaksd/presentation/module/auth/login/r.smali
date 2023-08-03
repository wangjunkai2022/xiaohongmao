.class public final Lcom/qennnsad/aknkaksd/presentation/module/auth/login/r;
.super Ljava/lang/Object;
.source "LoginViewModel_Factory.java"

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
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;",
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

.field private final b:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/app/s;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/user/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/auth/x;",
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
            "Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lg5/a;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/app/s;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/user/a;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/auth/x;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/r;->a:Lu7/c;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/r;->b:Lu7/c;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/r;->c:Lu7/c;

    .line 5
    iput-object p4, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/r;->d:Lu7/c;

    .line 6
    iput-object p5, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/r;->e:Lu7/c;

    .line 7
    iput-object p6, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/r;->f:Lu7/c;

    .line 8
    iput-object p7, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/r;->g:Lu7/c;

    return-void
.end method

.method public static a(Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;)Lcom/qennnsad/aknkaksd/presentation/module/auth/login/r;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lg5/a;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/app/s;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/user/a;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/auth/x;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;",
            ">;)",
            "Lcom/qennnsad/aknkaksd/presentation/module/auth/login/r;"
        }
    .end annotation

    new-instance v8, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/r;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/r;-><init>(Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;)V

    return-object v8
.end method

.method public static c(Lg5/a;Lcom/qennnsad/aknkaksd/domain/usecase/app/s;Lcom/qennnsad/aknkaksd/domain/usecase/user/a;Lcom/qennnsad/aknkaksd/domain/usecase/auth/x;Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;)Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;
    .locals 9

    new-instance v8, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;-><init>(Lg5/a;Lcom/qennnsad/aknkaksd/domain/usecase/app/s;Lcom/qennnsad/aknkaksd/domain/usecase/user/a;Lcom/qennnsad/aknkaksd/domain/usecase/auth/x;Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;)V

    return-object v8
.end method


# virtual methods
.method public b()Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;
    .locals 8

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/r;->a:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lg5/a;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/r;->b:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/qennnsad/aknkaksd/domain/usecase/app/s;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/r;->c:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/qennnsad/aknkaksd/domain/usecase/user/a;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/r;->d:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/qennnsad/aknkaksd/domain/usecase/auth/x;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/r;->e:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/r;->f:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/r;->g:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;

    invoke-static/range {v1 .. v7}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/r;->c(Lg5/a;Lcom/qennnsad/aknkaksd/domain/usecase/app/s;Lcom/qennnsad/aknkaksd/domain/usecase/user/a;Lcom/qennnsad/aknkaksd/domain/usecase/auth/x;Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;)Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/r;->b()Lcom/qennnsad/aknkaksd/presentation/module/auth/login/LoginViewModel;

    move-result-object v0

    return-object v0
.end method
