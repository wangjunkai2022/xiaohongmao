.class public final Lio/reactivex/internal/operators/maybe/c1;
.super Lio/reactivex/internal/operators/maybe/a;
.source "MaybePeek.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/c1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/maybe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Ln7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/g<",
            "-",
            "Lio/reactivex/disposables/c;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ln7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/g<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final d:Ln7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ln7/a;

.field final f:Ln7/a;

.field final g:Ln7/a;


# direct methods
.method public constructor <init>(Lio/reactivex/w;Ln7/g;Ln7/g;Ln7/g;Ln7/a;Ln7/a;Ln7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/w<",
            "TT;>;",
            "Ln7/g<",
            "-",
            "Lio/reactivex/disposables/c;",
            ">;",
            "Ln7/g<",
            "-TT;>;",
            "Ln7/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Ln7/a;",
            "Ln7/a;",
            "Ln7/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/maybe/a;-><init>(Lio/reactivex/w;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/c1;->b:Ln7/g;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/maybe/c1;->c:Ln7/g;

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/maybe/c1;->d:Ln7/g;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/maybe/c1;->e:Ln7/a;

    .line 6
    iput-object p6, p0, Lio/reactivex/internal/operators/maybe/c1;->f:Ln7/a;

    .line 7
    iput-object p7, p0, Lio/reactivex/internal/operators/maybe/c1;->g:Ln7/a;

    return-void
.end method


# virtual methods
.method protected q1(Lio/reactivex/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/a;->a:Lio/reactivex/w;

    new-instance v1, Lio/reactivex/internal/operators/maybe/c1$a;

    invoke-direct {v1, p1, p0}, Lio/reactivex/internal/operators/maybe/c1$a;-><init>(Lio/reactivex/t;Lio/reactivex/internal/operators/maybe/c1;)V

    invoke-interface {v0, v1}, Lio/reactivex/w;->b(Lio/reactivex/t;)V

    return-void
.end method
