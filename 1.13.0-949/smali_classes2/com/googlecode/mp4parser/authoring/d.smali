.class public Lcom/googlecode/mp4parser/authoring/d;
.super Ljava/lang/Object;
.source "Movie.java"


# instance fields
.field a:Lcom/googlecode/mp4parser/util/l;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/googlecode/mp4parser/util/l;->j:Lcom/googlecode/mp4parser/util/l;

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/d;->a:Lcom/googlecode/mp4parser/util/l;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/d;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/h;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget-object v0, Lcom/googlecode/mp4parser/util/l;->j:Lcom/googlecode/mp4parser/util/l;

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/d;->a:Lcom/googlecode/mp4parser/util/l;

    .line 6
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/d;->b:Ljava/util/List;

    return-void
.end method

.method public static b(JJ)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-wide p0

    :cond_0
    rem-long/2addr p0, p2

    invoke-static {p2, p3, p0, p1}, Lcom/googlecode/mp4parser/authoring/d;->b(JJ)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public a(Lcom/googlecode/mp4parser/authoring/h;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->a0()Lcom/googlecode/mp4parser/authoring/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/authoring/i;->i()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/googlecode/mp4parser/authoring/d;->f(J)Lcom/googlecode/mp4parser/authoring/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->a0()Lcom/googlecode/mp4parser/authoring/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/d;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/authoring/i;->t(J)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Lcom/googlecode/mp4parser/util/l;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/d;->a:Lcom/googlecode/mp4parser/util/l;

    return-object v0
.end method

.method public d()J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    return-wide v1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/googlecode/mp4parser/authoring/h;

    .line 2
    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/h;->a0()Lcom/googlecode/mp4parser/authoring/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/authoring/i;->i()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-gez v6, :cond_0

    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/h;->a0()Lcom/googlecode/mp4parser/authoring/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/i;->i()J

    move-result-wide v1

    goto :goto_0
.end method

.method public e()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/d;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->a0()Lcom/googlecode/mp4parser/authoring/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/authoring/i;->h()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/d;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/googlecode/mp4parser/authoring/h;

    .line 3
    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/h;->a0()Lcom/googlecode/mp4parser/authoring/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/authoring/i;->h()J

    move-result-wide v3

    invoke-static {v3, v4, v0, v1}, Lcom/googlecode/mp4parser/authoring/d;->b(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public f(J)Lcom/googlecode/mp4parser/authoring/h;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/mp4parser/authoring/h;

    .line 2
    invoke-interface {v1}, Lcom/googlecode/mp4parser/authoring/h;->a0()Lcom/googlecode/mp4parser/authoring/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/i;->i()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    return-object v1
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/d;->b:Ljava/util/List;

    return-object v0
.end method

.method public h(Lcom/googlecode/mp4parser/util/l;)V
    .locals 0

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/d;->a:Lcom/googlecode/mp4parser/util/l;

    return-void
.end method

.method public i(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/h;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/d;->b:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "Movie{ "

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/authoring/h;

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "track_"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/googlecode/mp4parser/authoring/h;->a0()Lcom/googlecode/mp4parser/authoring/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/i;->i()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/googlecode/mp4parser/authoring/h;->getHandler()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
