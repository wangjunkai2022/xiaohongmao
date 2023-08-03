.class final Lio/reactivex/rxjava3/internal/operators/observable/v2$h;
.super Ljava/lang/Object;
.source "ObservableReplay.java"

# interfaces
.implements Lio/reactivex/rxjava3/internal/operators/observable/v2$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/v2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/internal/operators/observable/v2$b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bufferSize",
            "eagerTruncate"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/v2$h;->a:I

    .line 3
    iput-boolean p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/v2$h;->b:Z

    return-void
.end method


# virtual methods
.method public call()Lio/reactivex/rxjava3/internal/operators/observable/v2$g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/internal/operators/observable/v2$g<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/v2$m;

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/v2$h;->a:I

    iget-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/v2$h;->b:Z

    invoke-direct {v0, v1, v2}, Lio/reactivex/rxjava3/internal/operators/observable/v2$m;-><init>(IZ)V

    return-object v0
.end method
