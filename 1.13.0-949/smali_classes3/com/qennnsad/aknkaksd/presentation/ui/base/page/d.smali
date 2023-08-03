.class public abstract Lcom/qennnsad/aknkaksd/presentation/ui/base/page/d;
.super Lcom/qennnsad/aknkaksd/presentation/ui/base/e;
.source "PagedPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        "SubUiType::",
        "Lcom/qennnsad/aknkaksd/presentation/ui/base/page/e<",
        "TDataType;>;ManagerType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/qennnsad/aknkaksd/presentation/ui/base/e<",
        "TSubUiType;>;"
    }
.end annotation


# instance fields
.field private d:Lcom/qennnsad/aknkaksd/presentation/ui/base/page/c;

.field private e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TManagerType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/base/page/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSubUiType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/e;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/base/n;)V

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/page/d;->g()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/page/d;->e:Ljava/lang/Object;

    .line 3
    new-instance p1, Lcom/qennnsad/aknkaksd/presentation/ui/base/page/c;

    invoke-direct {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/page/c;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/page/d;->d:Lcom/qennnsad/aknkaksd/presentation/ui/base/page/c;

    return-void
.end method


# virtual methods
.method protected abstract f(Ljava/lang/Object;I)Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TManagerType;I)",
            "Lio/reactivex/z<",
            "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse<",
            "Lcom/qennnsad/aknkaksd/data/bean/PageBean<",
            "TDataType;>;>;>;"
        }
    .end annotation
.end method

.method protected abstract g()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TManagerType;"
        }
    .end annotation
.end method
