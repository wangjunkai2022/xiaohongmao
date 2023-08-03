.class public final Lio/reactivex/internal/operators/completable/i0;
.super Lio/reactivex/a;
.source "CompletablePeek.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/i0$a;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/g;

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
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ln7/a;

.field final e:Ln7/a;

.field final f:Ln7/a;

.field final g:Ln7/a;


# direct methods
.method public constructor <init>(Lio/reactivex/g;Ln7/g;Ln7/g;Ln7/a;Ln7/a;Ln7/a;Ln7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g;",
            "Ln7/g<",
            "-",
            "Lio/reactivex/disposables/c;",
            ">;",
            "Ln7/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Ln7/a;",
            "Ln7/a;",
            "Ln7/a;",
            "Ln7/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/i0;->a:Lio/reactivex/g;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/i0;->b:Ln7/g;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/completable/i0;->c:Ln7/g;

    .line 5
    iput-object p4, p0, Lio/reactivex/internal/operators/completable/i0;->d:Ln7/a;

    .line 6
    iput-object p5, p0, Lio/reactivex/internal/operators/completable/i0;->e:Ln7/a;

    .line 7
    iput-object p6, p0, Lio/reactivex/internal/operators/completable/i0;->f:Ln7/a;

    .line 8
    iput-object p7, p0, Lio/reactivex/internal/operators/completable/i0;->g:Ln7/a;

    return-void
.end method


# virtual methods
.method protected I0(Lio/reactivex/d;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/completable/i0;->a:Lio/reactivex/g;

    new-instance v1, Lio/reactivex/internal/operators/completable/i0$a;

    invoke-direct {v1, p0, p1}, Lio/reactivex/internal/operators/completable/i0$a;-><init>(Lio/reactivex/internal/operators/completable/i0;Lio/reactivex/d;)V

    invoke-interface {v0, v1}, Lio/reactivex/g;->d(Lio/reactivex/d;)V

    return-void
.end method
