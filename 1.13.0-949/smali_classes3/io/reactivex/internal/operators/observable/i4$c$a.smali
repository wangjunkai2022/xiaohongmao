.class final Lio/reactivex/internal/operators/observable/i4$c$a;
.super Ljava/lang/Object;
.source "ObservableWindowTimed.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/i4$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private final a:Lio/reactivex/subjects/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lio/reactivex/internal/operators/observable/i4$c;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/i4$c;Lio/reactivex/subjects/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/j<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/i4$c$a;->b:Lio/reactivex/internal/operators/observable/i4$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/i4$c$a;->a:Lio/reactivex/subjects/j;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/i4$c$a;->b:Lio/reactivex/internal/operators/observable/i4$c;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/i4$c$a;->a:Lio/reactivex/subjects/j;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/observable/i4$c;->j(Lio/reactivex/subjects/j;)V

    return-void
.end method
