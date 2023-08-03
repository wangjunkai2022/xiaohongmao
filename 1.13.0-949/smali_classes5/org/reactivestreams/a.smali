.class public final Lorg/reactivestreams/a;
.super Ljava/lang/Object;
.source "FlowAdapters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/reactivestreams/a$a;,
        Lorg/reactivestreams/a$e;,
        Lorg/reactivestreams/a$b;,
        Lorg/reactivestreams/a$f;,
        Lorg/reactivestreams/a$g;,
        Lorg/reactivestreams/a$c;,
        Lorg/reactivestreams/a$h;,
        Lorg/reactivestreams/a$d;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lorg/reactivestreams/b;)Ljava/util/concurrent/Flow$Processor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/b<",
            "-TT;+TU;>;)",
            "Ljava/util/concurrent/Flow$Processor<",
            "TT;TU;>;"
        }
    .end annotation

    const-string v0, "reactiveStreamsProcessor"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lorg/reactivestreams/a$f;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lorg/reactivestreams/a$f;

    iget-object p0, p0, Lorg/reactivestreams/a$f;->a:Ljava/util/concurrent/Flow$Processor;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/Flow$Processor;

    if-eqz v0, :cond_1

    .line 5
    check-cast p0, Ljava/util/concurrent/Flow$Processor;

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lorg/reactivestreams/a$b;

    invoke-direct {v0, p0}, Lorg/reactivestreams/a$b;-><init>(Lorg/reactivestreams/b;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static b(Lorg/reactivestreams/c;)Ljava/util/concurrent/Flow$Publisher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/c<",
            "+TT;>;)",
            "Ljava/util/concurrent/Flow$Publisher<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "reactiveStreamsPublisher"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lorg/reactivestreams/a$e;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lorg/reactivestreams/a$e;

    iget-object p0, p0, Lorg/reactivestreams/a$e;->a:Ljava/util/concurrent/Flow$Publisher;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/Flow$Publisher;

    if-eqz v0, :cond_1

    .line 5
    check-cast p0, Ljava/util/concurrent/Flow$Publisher;

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lorg/reactivestreams/a$a;

    invoke-direct {v0, p0}, Lorg/reactivestreams/a$a;-><init>(Lorg/reactivestreams/c;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static c(Lorg/reactivestreams/d;)Ljava/util/concurrent/Flow$Subscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/d<",
            "TT;>;)",
            "Ljava/util/concurrent/Flow$Subscriber<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "reactiveStreamsSubscriber"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lorg/reactivestreams/a$g;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lorg/reactivestreams/a$g;

    iget-object p0, p0, Lorg/reactivestreams/a$g;->a:Ljava/util/concurrent/Flow$Subscriber;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/Flow$Subscriber;

    if-eqz v0, :cond_1

    .line 5
    check-cast p0, Ljava/util/concurrent/Flow$Subscriber;

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lorg/reactivestreams/a$c;

    invoke-direct {v0, p0}, Lorg/reactivestreams/a$c;-><init>(Lorg/reactivestreams/d;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static d(Ljava/util/concurrent/Flow$Processor;)Lorg/reactivestreams/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Flow$Processor<",
            "-TT;+TU;>;)",
            "Lorg/reactivestreams/b<",
            "TT;TU;>;"
        }
    .end annotation

    const-string v0, "flowProcessor"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lorg/reactivestreams/a$b;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lorg/reactivestreams/a$b;

    iget-object p0, p0, Lorg/reactivestreams/a$b;->a:Lorg/reactivestreams/b;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p0, Lorg/reactivestreams/b;

    if-eqz v0, :cond_1

    .line 5
    check-cast p0, Lorg/reactivestreams/b;

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lorg/reactivestreams/a$f;

    invoke-direct {v0, p0}, Lorg/reactivestreams/a$f;-><init>(Ljava/util/concurrent/Flow$Processor;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static e(Ljava/util/concurrent/Flow$Publisher;)Lorg/reactivestreams/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Flow$Publisher<",
            "+TT;>;)",
            "Lorg/reactivestreams/c<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "flowPublisher"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lorg/reactivestreams/a$a;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lorg/reactivestreams/a$a;

    iget-object p0, p0, Lorg/reactivestreams/a$a;->a:Lorg/reactivestreams/c;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p0, Lorg/reactivestreams/c;

    if-eqz v0, :cond_1

    .line 5
    check-cast p0, Lorg/reactivestreams/c;

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lorg/reactivestreams/a$e;

    invoke-direct {v0, p0}, Lorg/reactivestreams/a$e;-><init>(Ljava/util/concurrent/Flow$Publisher;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static f(Ljava/util/concurrent/Flow$Subscriber;)Lorg/reactivestreams/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Flow$Subscriber<",
            "TT;>;)",
            "Lorg/reactivestreams/d<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "flowSubscriber"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lorg/reactivestreams/a$c;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lorg/reactivestreams/a$c;

    iget-object p0, p0, Lorg/reactivestreams/a$c;->a:Lorg/reactivestreams/d;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p0, Lorg/reactivestreams/d;

    if-eqz v0, :cond_1

    .line 5
    check-cast p0, Lorg/reactivestreams/d;

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lorg/reactivestreams/a$g;

    invoke-direct {v0, p0}, Lorg/reactivestreams/a$g;-><init>(Ljava/util/concurrent/Flow$Subscriber;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
