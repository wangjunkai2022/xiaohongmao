.class final Lio/reactivex/rxjava3/internal/operators/observable/l4$b$a;
.super Ljava/lang/Object;
.source "ObservableWindowTimed.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/l4$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/internal/operators/observable/l4$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/observable/l4$b<",
            "*>;"
        }
    .end annotation
.end field

.field final b:J


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/observable/l4$b;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/operators/observable/l4$b<",
            "*>;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$b$a;->a:Lio/reactivex/rxjava3/internal/operators/observable/l4$b;

    .line 3
    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$b$a;->b:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/l4$b$a;->a:Lio/reactivex/rxjava3/internal/operators/observable/l4$b;

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/internal/operators/observable/l4$b;->e(Lio/reactivex/rxjava3/internal/operators/observable/l4$b$a;)V

    return-void
.end method
