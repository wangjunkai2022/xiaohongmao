.class public final Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/q;
.super Ljava/lang/Object;
.source "SignUpViewModel_Factory.java"

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
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/auth/e0;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/auth/t;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lg5/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/auth/e0;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/auth/t;",
            ">;",
            "Lu7/c<",
            "Lg5/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/q;->a:Lu7/c;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/q;->b:Lu7/c;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/q;->c:Lu7/c;

    .line 5
    iput-object p4, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/q;->d:Lu7/c;

    .line 6
    iput-object p5, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/q;->e:Lu7/c;

    return-void
.end method

.method public static a(Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;)Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/q;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/auth/e0;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/auth/t;",
            ">;",
            "Lu7/c<",
            "Lg5/a;",
            ">;)",
            "Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/q;"
        }
    .end annotation

    new-instance v6, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/q;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/q;-><init>(Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;)V

    return-object v6
.end method

.method public static c(Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;Lcom/qennnsad/aknkaksd/domain/usecase/auth/e0;Lcom/qennnsad/aknkaksd/domain/usecase/auth/t;Lg5/a;)Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;
    .locals 7

    new-instance v6, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;-><init>(Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;Lcom/qennnsad/aknkaksd/domain/usecase/auth/e0;Lcom/qennnsad/aknkaksd/domain/usecase/auth/t;Lg5/a;)V

    return-object v6
.end method


# virtual methods
.method public b()Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;
    .locals 5

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/q;->a:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/q;->b:Lu7/c;

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/q;->c:Lu7/c;

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qennnsad/aknkaksd/domain/usecase/auth/e0;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/q;->d:Lu7/c;

    invoke-interface {v3}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qennnsad/aknkaksd/domain/usecase/auth/t;

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/q;->e:Lu7/c;

    invoke-interface {v4}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg5/a;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/q;->c(Lcom/qennnsad/aknkaksd/domain/usecase/auth/m;Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;Lcom/qennnsad/aknkaksd/domain/usecase/auth/e0;Lcom/qennnsad/aknkaksd/domain/usecase/auth/t;Lg5/a;)Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/q;->b()Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;

    move-result-object v0

    return-object v0
.end method
