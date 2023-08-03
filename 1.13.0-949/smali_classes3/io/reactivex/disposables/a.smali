.class final Lio/reactivex/disposables/a;
.super Lio/reactivex/disposables/f;
.source "ActionDisposable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/disposables/f<",
        "Ln7/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:J = -0x721258278bee89a1L


# direct methods
.method constructor <init>(Ln7/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/reactivex/disposables/f;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lm7/e;
        .end annotation
    .end param

    check-cast p1, Ln7/a;

    invoke-virtual {p0, p1}, Lio/reactivex/disposables/a;->b(Ln7/a;)V

    return-void
.end method

.method protected b(Ln7/a;)V
    .locals 0
    .param p1    # Ln7/a;
        .annotation build Lm7/e;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-interface {p1}, Ln7/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 2
    invoke-static {p1}, Lio/reactivex/internal/util/g;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
