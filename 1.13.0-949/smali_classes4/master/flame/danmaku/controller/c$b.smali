.class Lmaster/flame/danmaku/controller/c$b;
.super Lmaster/flame/danmaku/controller/i;
.source "DrawHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/controller/c;->i0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lmaster/flame/danmaku/controller/c;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/controller/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmaster/flame/danmaku/controller/c$b;->b:Lmaster/flame/danmaku/controller/c;

    invoke-direct {p0, p2}, Lmaster/flame/danmaku/controller/i;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    invoke-static {}, Lg8/c;->b()J

    move-result-wide v0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/i;->a()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lmaster/flame/danmaku/controller/c$b;->b:Lmaster/flame/danmaku/controller/c;

    invoke-static {v2}, Lmaster/flame/danmaku/controller/c;->n(Lmaster/flame/danmaku/controller/c;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3
    invoke-static {}, Lg8/c;->b()J

    move-result-wide v2

    .line 4
    invoke-static {}, Lg8/c;->b()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 5
    iget-object v6, p0, Lmaster/flame/danmaku/controller/c$b;->b:Lmaster/flame/danmaku/controller/c;

    invoke-static {v6}, Lmaster/flame/danmaku/controller/c;->o(Lmaster/flame/danmaku/controller/c;)J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/16 v4, 0x1

    cmp-long v8, v6, v4

    if-lez v8, :cond_0

    .line 6
    iget-object v6, p0, Lmaster/flame/danmaku/controller/c$b;->b:Lmaster/flame/danmaku/controller/c;

    invoke-static {v6}, Lmaster/flame/danmaku/controller/c;->p(Lmaster/flame/danmaku/controller/c;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 7
    invoke-static {v4, v5}, Lg8/c;->a(J)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c$b;->b:Lmaster/flame/danmaku/controller/c;

    invoke-static {v0, v2, v3}, Lmaster/flame/danmaku/controller/c;->q(Lmaster/flame/danmaku/controller/c;J)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    .line 9
    iget-object v4, p0, Lmaster/flame/danmaku/controller/c$b;->b:Lmaster/flame/danmaku/controller/c;

    invoke-static {v4}, Lmaster/flame/danmaku/controller/c;->p(Lmaster/flame/danmaku/controller/c;)Z

    move-result v4

    if-nez v4, :cond_1

    const-wide/16 v4, 0x3c

    sub-long/2addr v4, v0

    .line 10
    invoke-static {v4, v5}, Lg8/c;->a(J)V

    goto :goto_1

    .line 11
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c$b;->b:Lmaster/flame/danmaku/controller/c;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/c;->r(Lmaster/flame/danmaku/controller/c;)Lmaster/flame/danmaku/controller/g;

    move-result-object v0

    invoke-interface {v0}, Lmaster/flame/danmaku/controller/g;->a()J

    move-result-wide v0

    .line 12
    iget-object v4, p0, Lmaster/flame/danmaku/controller/c$b;->b:Lmaster/flame/danmaku/controller/c;

    invoke-static {v4}, Lmaster/flame/danmaku/controller/c;->s(Lmaster/flame/danmaku/controller/c;)J

    move-result-wide v4

    cmp-long v6, v0, v4

    if-lez v6, :cond_2

    .line 13
    iget-object v4, p0, Lmaster/flame/danmaku/controller/c$b;->b:Lmaster/flame/danmaku/controller/c;

    invoke-static {v4}, Lmaster/flame/danmaku/controller/c;->t(Lmaster/flame/danmaku/controller/c;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lmaster/flame/danmaku/danmaku/model/f;->a(J)J

    .line 14
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c$b;->b:Lmaster/flame/danmaku/controller/c;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/c;->b(Lmaster/flame/danmaku/controller/c;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 15
    :cond_2
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c$b;->b:Lmaster/flame/danmaku/controller/c;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/c;->d(Lmaster/flame/danmaku/controller/c;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 16
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c$b;->b:Lmaster/flame/danmaku/controller/c;

    const-wide/32 v4, 0x989680

    invoke-static {v0, v4, v5}, Lmaster/flame/danmaku/controller/c;->e(Lmaster/flame/danmaku/controller/c;J)V

    goto :goto_1

    .line 17
    :cond_3
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c$b;->b:Lmaster/flame/danmaku/controller/c;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/c;->f(Lmaster/flame/danmaku/controller/c;)Lf8/a$c;

    move-result-object v0

    iget-boolean v0, v0, Lf8/a$c;->p:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmaster/flame/danmaku/controller/c$b;->b:Lmaster/flame/danmaku/controller/c;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/c;->g(Lmaster/flame/danmaku/controller/c;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    iget-object v0, p0, Lmaster/flame/danmaku/controller/c$b;->b:Lmaster/flame/danmaku/controller/c;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/c;->f(Lmaster/flame/danmaku/controller/c;)Lf8/a$c;

    move-result-object v0

    iget-wide v0, v0, Lf8/a$c;->o:J

    iget-object v4, p0, Lmaster/flame/danmaku/controller/c$b;->b:Lmaster/flame/danmaku/controller/c;

    invoke-static {v4}, Lmaster/flame/danmaku/controller/c;->t(Lmaster/flame/danmaku/controller/c;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object v4

    iget-wide v4, v4, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1f4

    cmp-long v6, v0, v4

    if-lez v6, :cond_4

    .line 19
    iget-object v4, p0, Lmaster/flame/danmaku/controller/c$b;->b:Lmaster/flame/danmaku/controller/c;

    invoke-static {v4}, Lmaster/flame/danmaku/controller/c;->h(Lmaster/flame/danmaku/controller/c;)V

    .line 20
    iget-object v4, p0, Lmaster/flame/danmaku/controller/c$b;->b:Lmaster/flame/danmaku/controller/c;

    const-wide/16 v5, 0xa

    sub-long/2addr v0, v5

    invoke-static {v4, v0, v1}, Lmaster/flame/danmaku/controller/c;->e(Lmaster/flame/danmaku/controller/c;J)V

    :cond_4
    :goto_1
    move-wide v0, v2

    goto/16 :goto_0

    :cond_5
    return-void
.end method
