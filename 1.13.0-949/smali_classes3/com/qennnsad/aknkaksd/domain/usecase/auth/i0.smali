.class public final Lcom/qennnsad/aknkaksd/domain/usecase/auth/i0;
.super Ljava/lang/Object;
.source "SendSmsUseCase_Factory.java"

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
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;",
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
            "Lg5/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu7/c;Lu7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lg5/a;",
            ">;",
            "Lu7/c<",
            "Lg5/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/i0;->a:Lu7/c;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/i0;->b:Lu7/c;

    return-void
.end method

.method public static a(Lu7/c;Lu7/c;)Lcom/qennnsad/aknkaksd/domain/usecase/auth/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lg5/a;",
            ">;",
            "Lu7/c<",
            "Lg5/f;",
            ">;)",
            "Lcom/qennnsad/aknkaksd/domain/usecase/auth/i0;"
        }
    .end annotation

    new-instance v0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/i0;

    invoke-direct {v0, p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/i0;-><init>(Lu7/c;Lu7/c;)V

    return-object v0
.end method

.method public static c(Lg5/a;Lg5/f;)Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;

    invoke-direct {v0, p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;-><init>(Lg5/a;Lg5/f;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/i0;->a:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/i0;->b:Lu7/c;

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg5/f;

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/i0;->c(Lg5/a;Lg5/f;)Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/i0;->b()Lcom/qennnsad/aknkaksd/domain/usecase/auth/h0;

    move-result-object v0

    return-object v0
.end method
