.class public final Lcom/jakewharton/rxbinding4/widget/c$a$a;
.super Landroid/database/DataSetObserver;
.source "AdapterDataChangeObservable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding4/widget/c$a;-><init>(Landroid/widget/Adapter;Lio/reactivex/rxjava3/core/n0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/jakewharton/rxbinding4/widget/c$a$a",
        "Landroid/database/DataSetObserver;",
        "",
        "onChanged",
        "rxbinding_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jakewharton/rxbinding4/widget/c$a;

.field final synthetic b:Lio/reactivex/rxjava3/core/n0;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding4/widget/c$a;Lio/reactivex/rxjava3/core/n0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/n0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jakewharton/rxbinding4/widget/c$a$a;->a:Lcom/jakewharton/rxbinding4/widget/c$a;

    iput-object p2, p0, Lcom/jakewharton/rxbinding4/widget/c$a$a;->b:Lio/reactivex/rxjava3/core/n0;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/c$a$a;->a:Lcom/jakewharton/rxbinding4/widget/c$a;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/android/b;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/c$a$a;->b:Lio/reactivex/rxjava3/core/n0;

    iget-object v1, p0, Lcom/jakewharton/rxbinding4/widget/c$a$a;->a:Lcom/jakewharton/rxbinding4/widget/c$a;

    invoke-static {v1}, Lcom/jakewharton/rxbinding4/widget/c$a;->c(Lcom/jakewharton/rxbinding4/widget/c$a;)Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/n0;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
