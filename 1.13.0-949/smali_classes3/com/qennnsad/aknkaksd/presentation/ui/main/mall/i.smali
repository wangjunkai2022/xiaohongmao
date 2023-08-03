.class public final Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/i;
.super Ljava/lang/Object;
.source "MallViewModel_Factory.java"

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
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/webview/b;",
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
            "Lcom/qennnsad/aknkaksd/domain/usecase/webview/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/i;->a:Lu7/c;

    return-void
.end method

.method public static a(Lu7/c;)Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/webview/b;",
            ">;)",
            "Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/i;"
        }
    .end annotation

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/i;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/i;-><init>(Lu7/c;)V

    return-object v0
.end method

.method public static c(Lcom/qennnsad/aknkaksd/domain/usecase/webview/b;)Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel;
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel;-><init>(Lcom/qennnsad/aknkaksd/domain/usecase/webview/b;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/i;->a:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/domain/usecase/webview/b;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/i;->c(Lcom/qennnsad/aknkaksd/domain/usecase/webview/b;)Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/i;->b()Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/MallViewModel;

    move-result-object v0

    return-object v0
.end method
