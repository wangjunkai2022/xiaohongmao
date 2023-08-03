.class final Lcom/jakewharton/rxbinding4/widget/c$a;
.super Lio/reactivex/rxjava3/android/b;
.source "AdapterDataChangeObservable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/rxbinding4/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Lio/reactivex/rxjava3/android/b;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u0000*\u0008\u0008\u0001\u0010\u0002*\u00020\u00012\u00020\u0003B\u001f\u0012\u0006\u0010\u000c\u001a\u00028\u0001\u0012\u000e\u0010\u000e\u001a\n\u0012\u0006\u0008\u0000\u0012\u00028\u00010\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0008\u0010\u0005\u001a\u00020\u0004H\u0014R\u0014\u0010\t\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u000c\u001a\u00028\u00018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/jakewharton/rxbinding4/widget/c$a;",
        "Landroid/widget/Adapter;",
        "T",
        "Lio/reactivex/rxjava3/android/b;",
        "",
        "a",
        "Landroid/database/DataSetObserver;",
        "b",
        "Landroid/database/DataSetObserver;",
        "dataSetObserver",
        "c",
        "Landroid/widget/Adapter;",
        "adapter",
        "Lio/reactivex/rxjava3/core/n0;",
        "observer",
        "<init>",
        "(Landroid/widget/Adapter;Lio/reactivex/rxjava3/core/n0;)V",
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
.field public final b:Landroid/database/DataSetObserver;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/Adapter;Lio/reactivex/rxjava3/core/n0;)V
    .locals 0
    .param p1    # Landroid/widget/Adapter;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/reactivex/rxjava3/core/n0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/android/b;-><init>()V

    iput-object p1, p0, Lcom/jakewharton/rxbinding4/widget/c$a;->c:Landroid/widget/Adapter;

    .line 2
    new-instance p1, Lcom/jakewharton/rxbinding4/widget/c$a$a;

    invoke-direct {p1, p0, p2}, Lcom/jakewharton/rxbinding4/widget/c$a$a;-><init>(Lcom/jakewharton/rxbinding4/widget/c$a;Lio/reactivex/rxjava3/core/n0;)V

    iput-object p1, p0, Lcom/jakewharton/rxbinding4/widget/c$a;->b:Landroid/database/DataSetObserver;

    return-void
.end method

.method public static final synthetic c(Lcom/jakewharton/rxbinding4/widget/c$a;)Landroid/widget/Adapter;
    .locals 0

    iget-object p0, p0, Lcom/jakewharton/rxbinding4/widget/c$a;->c:Landroid/widget/Adapter;

    return-object p0
.end method


# virtual methods
.method protected a()V
    .locals 2

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/c$a;->c:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/jakewharton/rxbinding4/widget/c$a;->b:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method
