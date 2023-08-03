.class Lmaster/flame/danmaku/danmaku/model/objectpool/a;
.super Ljava/lang/Object;
.source "FinitePool.java"

# interfaces
.implements Lmaster/flame/danmaku/danmaku/model/objectpool/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lmaster/flame/danmaku/danmaku/model/objectpool/c<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lmaster/flame/danmaku/danmaku/model/objectpool/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lmaster/flame/danmaku/danmaku/model/objectpool/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmaster/flame/danmaku/danmaku/model/objectpool/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:Z

.field private d:Lmaster/flame/danmaku/danmaku/model/objectpool/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/danmaku/model/objectpool/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmaster/flame/danmaku/danmaku/model/objectpool/d<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/a;->a:Lmaster/flame/danmaku/danmaku/model/objectpool/d;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/a;->b:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/a;->c:Z

    return-void
.end method

.method constructor <init>(Lmaster/flame/danmaku/danmaku/model/objectpool/d;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmaster/flame/danmaku/danmaku/model/objectpool/d<",
            "TT;>;I)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p2, :cond_0

    .line 6
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/a;->a:Lmaster/flame/danmaku/danmaku/model/objectpool/d;

    .line 7
    iput p2, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/a;->b:I

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/a;->c:Z

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The pool limit must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lmaster/flame/danmaku/danmaku/model/objectpool/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/objectpool/c;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/a;->c:Z

    if-nez v0, :cond_0

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/a;->e:I

    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/a;->b:I

    if-ge v0, v1, :cond_1

    .line 3
    :cond_0
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/a;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/a;->e:I

    .line 4
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/a;->d:Lmaster/flame/danmaku/danmaku/model/objectpool/c;

    invoke-interface {p1, v0}, Lmaster/flame/danmaku/danmaku/model/objectpool/c;->j(Ljava/lang/Object;)V

    .line 5
    invoke-interface {p1, v1}, Lmaster/flame/danmaku/danmaku/model/objectpool/c;->a(Z)V

    .line 6
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/a;->d:Lmaster/flame/danmaku/danmaku/model/objectpool/c;

    .line 7
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/a;->a:Lmaster/flame/danmaku/danmaku/model/objectpool/d;

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/danmaku/model/objectpool/d;->a(Lmaster/flame/danmaku/danmaku/model/objectpool/c;)V

    goto :goto_0

    .line 8
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FinitePool] Element is already in pool: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public acquire()Lmaster/flame/danmaku/danmaku/model/objectpool/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/a;->d:Lmaster/flame/danmaku/danmaku/model/objectpool/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/objectpool/c;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmaster/flame/danmaku/danmaku/model/objectpool/c;

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/a;->d:Lmaster/flame/danmaku/danmaku/model/objectpool/c;

    .line 3
    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/a;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/a;->e:I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/a;->a:Lmaster/flame/danmaku/danmaku/model/objectpool/d;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/objectpool/d;->b()Lmaster/flame/danmaku/danmaku/model/objectpool/c;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-interface {v0, v1}, Lmaster/flame/danmaku/danmaku/model/objectpool/c;->j(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, v1}, Lmaster/flame/danmaku/danmaku/model/objectpool/c;->a(Z)V

    .line 7
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/objectpool/a;->a:Lmaster/flame/danmaku/danmaku/model/objectpool/d;

    invoke-interface {v1, v0}, Lmaster/flame/danmaku/danmaku/model/objectpool/d;->c(Lmaster/flame/danmaku/danmaku/model/objectpool/c;)V

    :cond_1
    return-object v0
.end method
