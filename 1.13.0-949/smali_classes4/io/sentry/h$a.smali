.class Lio/sentry/h$a;
.super Ljava/lang/Object;
.source "CircularFifoQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/h;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field final synthetic d:Lio/sentry/h;


# direct methods
.method constructor <init>(Lio/sentry/h;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/sentry/h$a;->d:Lio/sentry/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lio/sentry/h;->a(Lio/sentry/h;)I

    move-result v0

    iput v0, p0, Lio/sentry/h$a;->a:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lio/sentry/h$a;->b:I

    .line 4
    invoke-static {p1}, Lio/sentry/h;->b(Lio/sentry/h;)Z

    move-result p1

    iput-boolean p1, p0, Lio/sentry/h$a;->c:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget-boolean v0, p0, Lio/sentry/h$a;->c:Z

    if-nez v0, :cond_1

    iget v0, p0, Lio/sentry/h$a;->a:I

    iget-object v1, p0, Lio/sentry/h$a;->d:Lio/sentry/h;

    invoke-static {v1}, Lio/sentry/h;->d(Lio/sentry/h;)I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/sentry/h$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/sentry/h$a;->c:Z

    .line 3
    iget v0, p0, Lio/sentry/h$a;->a:I

    iput v0, p0, Lio/sentry/h$a;->b:I

    .line 4
    iget-object v1, p0, Lio/sentry/h$a;->d:Lio/sentry/h;

    invoke-static {v1, v0}, Lio/sentry/h;->h(Lio/sentry/h;I)I

    move-result v0

    iput v0, p0, Lio/sentry/h$a;->a:I

    .line 5
    iget-object v0, p0, Lio/sentry/h$a;->d:Lio/sentry/h;

    invoke-static {v0}, Lio/sentry/h;->j(Lio/sentry/h;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lio/sentry/h$a;->b:I

    aget-object v0, v0, v1

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 7

    .line 1
    iget v0, p0, Lio/sentry/h$a;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 2
    iget-object v2, p0, Lio/sentry/h$a;->d:Lio/sentry/h;

    invoke-static {v2}, Lio/sentry/h;->a(Lio/sentry/h;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 3
    iget-object v0, p0, Lio/sentry/h$a;->d:Lio/sentry/h;

    invoke-virtual {v0}, Lio/sentry/h;->remove()Ljava/lang/Object;

    .line 4
    iput v1, p0, Lio/sentry/h$a;->b:I

    return-void

    .line 5
    :cond_0
    iget v0, p0, Lio/sentry/h$a;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 6
    iget-object v2, p0, Lio/sentry/h$a;->d:Lio/sentry/h;

    invoke-static {v2}, Lio/sentry/h;->a(Lio/sentry/h;)I

    move-result v2

    iget v3, p0, Lio/sentry/h$a;->b:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lio/sentry/h$a;->d:Lio/sentry/h;

    invoke-static {v2}, Lio/sentry/h;->d(Lio/sentry/h;)I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 7
    iget-object v2, p0, Lio/sentry/h$a;->d:Lio/sentry/h;

    invoke-static {v2}, Lio/sentry/h;->j(Lio/sentry/h;)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lio/sentry/h$a;->d:Lio/sentry/h;

    invoke-static {v3}, Lio/sentry/h;->j(Lio/sentry/h;)[Ljava/lang/Object;

    move-result-object v3

    iget v5, p0, Lio/sentry/h$a;->b:I

    iget-object v6, p0, Lio/sentry/h$a;->d:Lio/sentry/h;

    invoke-static {v6}, Lio/sentry/h;->d(Lio/sentry/h;)I

    move-result v6

    sub-int/2addr v6, v0

    invoke-static {v2, v0, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    iget-object v2, p0, Lio/sentry/h$a;->d:Lio/sentry/h;

    invoke-static {v2}, Lio/sentry/h;->d(Lio/sentry/h;)I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 9
    iget-object v2, p0, Lio/sentry/h$a;->d:Lio/sentry/h;

    invoke-static {v2}, Lio/sentry/h;->k(Lio/sentry/h;)I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 10
    iget-object v2, p0, Lio/sentry/h$a;->d:Lio/sentry/h;

    invoke-static {v2}, Lio/sentry/h;->j(Lio/sentry/h;)[Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lio/sentry/h$a;->d:Lio/sentry/h;

    invoke-static {v3}, Lio/sentry/h;->j(Lio/sentry/h;)[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    const/4 v0, 0x0

    goto :goto_0

    .line 11
    :cond_2
    iget-object v2, p0, Lio/sentry/h$a;->d:Lio/sentry/h;

    invoke-static {v2}, Lio/sentry/h;->j(Lio/sentry/h;)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lio/sentry/h$a;->d:Lio/sentry/h;

    invoke-static {v3, v0}, Lio/sentry/h;->l(Lio/sentry/h;I)I

    move-result v3

    iget-object v5, p0, Lio/sentry/h$a;->d:Lio/sentry/h;

    invoke-static {v5}, Lio/sentry/h;->j(Lio/sentry/h;)[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v0

    aput-object v5, v2, v3

    .line 12
    iget-object v2, p0, Lio/sentry/h$a;->d:Lio/sentry/h;

    invoke-static {v2, v0}, Lio/sentry/h;->h(Lio/sentry/h;I)I

    move-result v0

    goto :goto_0

    .line 13
    :cond_3
    :goto_1
    iput v1, p0, Lio/sentry/h$a;->b:I

    .line 14
    iget-object v0, p0, Lio/sentry/h$a;->d:Lio/sentry/h;

    invoke-static {v0}, Lio/sentry/h;->d(Lio/sentry/h;)I

    move-result v1

    invoke-static {v0, v1}, Lio/sentry/h;->l(Lio/sentry/h;I)I

    move-result v1

    invoke-static {v0, v1}, Lio/sentry/h;->e(Lio/sentry/h;I)I

    .line 15
    iget-object v0, p0, Lio/sentry/h$a;->d:Lio/sentry/h;

    invoke-static {v0}, Lio/sentry/h;->j(Lio/sentry/h;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/h$a;->d:Lio/sentry/h;

    invoke-static {v1}, Lio/sentry/h;->d(Lio/sentry/h;)I

    move-result v1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 16
    iget-object v0, p0, Lio/sentry/h$a;->d:Lio/sentry/h;

    invoke-static {v0, v4}, Lio/sentry/h;->c(Lio/sentry/h;Z)Z

    .line 17
    iget-object v0, p0, Lio/sentry/h$a;->d:Lio/sentry/h;

    iget v1, p0, Lio/sentry/h$a;->a:I

    invoke-static {v0, v1}, Lio/sentry/h;->l(Lio/sentry/h;I)I

    move-result v0

    iput v0, p0, Lio/sentry/h$a;->a:I

    return-void

    .line 18
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
