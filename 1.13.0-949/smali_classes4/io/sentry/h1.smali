.class public final Lio/sentry/h1;
.super Ljava/lang/Object;
.source "JsonObjectDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/h1$c;,
        Lio/sentry/h1$d;,
        Lio/sentry/h1$e;,
        Lio/sentry/h1$f;,
        Lio/sentry/h1$b;,
        Lio/sentry/h1$g;
    }
.end annotation

.annotation build Lm8/a$c;
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/sentry/h1$c;",
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/h1;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Lio/sentry/h1;Lio/sentry/i1;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lio/sentry/h1;->h(Lio/sentry/i1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lio/sentry/h1;->i()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private d()Lio/sentry/h1$c;
    .locals 2
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/h1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lio/sentry/h1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/h1$c;

    return-object v0
.end method

.method private e()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lio/sentry/h1;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    invoke-direct {p0}, Lio/sentry/h1;->d()Lio/sentry/h1$c;

    move-result-object v0

    .line 3
    invoke-direct {p0}, Lio/sentry/h1;->l()V

    .line 4
    invoke-direct {p0}, Lio/sentry/h1;->d()Lio/sentry/h1$c;

    move-result-object v1

    instance-of v1, v1, Lio/sentry/h1$f;

    if-eqz v1, :cond_1

    .line 5
    invoke-direct {p0}, Lio/sentry/h1;->d()Lio/sentry/h1$c;

    move-result-object v1

    check-cast v1, Lio/sentry/h1$f;

    .line 6
    invoke-direct {p0}, Lio/sentry/h1;->l()V

    .line 7
    invoke-direct {p0}, Lio/sentry/h1;->d()Lio/sentry/h1$c;

    move-result-object v2

    check-cast v2, Lio/sentry/h1$e;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 8
    iget-object v2, v2, Lio/sentry/h1$e;->a:Ljava/util/HashMap;

    iget-object v1, v1, Lio/sentry/h1$f;->a:Ljava/lang/String;

    invoke-interface {v0}, Lio/sentry/h1$c;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct {p0}, Lio/sentry/h1;->d()Lio/sentry/h1$c;

    move-result-object v1

    instance-of v1, v1, Lio/sentry/h1$d;

    if-eqz v1, :cond_2

    .line 10
    invoke-direct {p0}, Lio/sentry/h1;->d()Lio/sentry/h1$c;

    move-result-object v1

    check-cast v1, Lio/sentry/h1$d;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 11
    iget-object v1, v1, Lio/sentry/h1$d;->a:Ljava/util/ArrayList;

    invoke-interface {v0}, Lio/sentry/h1$c;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private f(Lio/sentry/h1$b;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lio/sentry/h1$b;->a()Ljava/lang/Object;

    move-result-object p1

    .line 2
    invoke-direct {p0}, Lio/sentry/h1;->d()Lio/sentry/h1$c;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lio/sentry/h1$g;

    invoke-direct {v0, p1}, Lio/sentry/h1$g;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lio/sentry/h1;->m(Lio/sentry/h1$c;)V

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    invoke-direct {p0}, Lio/sentry/h1;->d()Lio/sentry/h1$c;

    move-result-object v0

    instance-of v0, v0, Lio/sentry/h1$f;

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lio/sentry/h1;->d()Lio/sentry/h1$c;

    move-result-object v0

    check-cast v0, Lio/sentry/h1$f;

    .line 6
    invoke-direct {p0}, Lio/sentry/h1;->l()V

    .line 7
    invoke-direct {p0}, Lio/sentry/h1;->d()Lio/sentry/h1$c;

    move-result-object v1

    check-cast v1, Lio/sentry/h1$e;

    .line 8
    iget-object v1, v1, Lio/sentry/h1$e;->a:Ljava/util/HashMap;

    iget-object v0, v0, Lio/sentry/h1$f;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct {p0}, Lio/sentry/h1;->d()Lio/sentry/h1$c;

    move-result-object v0

    instance-of v0, v0, Lio/sentry/h1$d;

    if-eqz v0, :cond_2

    .line 10
    invoke-direct {p0}, Lio/sentry/h1;->d()Lio/sentry/h1$c;

    move-result-object v0

    check-cast v0, Lio/sentry/h1$d;

    .line 11
    iget-object v0, v0, Lio/sentry/h1$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private g()Z
    .locals 2

    iget-object v0, p0, Lio/sentry/h1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private synthetic h(Lio/sentry/i1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/sentry/h1;->j(Lio/sentry/i1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic i()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method private j(Lio/sentry/i1;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->G()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 2
    :catch_0
    :try_start_1
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->E()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 3
    :catch_1
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->H()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private k(Lio/sentry/i1;)V
    .locals 2
    .param p1    # Lio/sentry/i1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/sentry/h1$a;->a:[I

    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->X()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_1

    .line 2
    :pswitch_1
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->K()V

    .line 3
    sget-object v0, Lio/sentry/g1;->a:Lio/sentry/g1;

    invoke-direct {p0, v0}, Lio/sentry/h1;->f(Lio/sentry/h1$b;)Z

    move-result v0

    goto :goto_1

    .line 4
    :pswitch_2
    new-instance v0, Lio/sentry/e1;

    invoke-direct {v0, p1}, Lio/sentry/e1;-><init>(Lio/sentry/i1;)V

    invoke-direct {p0, v0}, Lio/sentry/h1;->f(Lio/sentry/h1$b;)Z

    move-result v0

    goto :goto_1

    .line 5
    :pswitch_3
    new-instance v0, Lio/sentry/d1;

    invoke-direct {v0, p0, p1}, Lio/sentry/d1;-><init>(Lio/sentry/h1;Lio/sentry/i1;)V

    invoke-direct {p0, v0}, Lio/sentry/h1;->f(Lio/sentry/h1$b;)Z

    move-result v0

    goto :goto_1

    .line 6
    :pswitch_4
    new-instance v0, Lio/sentry/f1;

    invoke-direct {v0, p1}, Lio/sentry/f1;-><init>(Lio/sentry/i1;)V

    invoke-direct {p0, v0}, Lio/sentry/h1;->f(Lio/sentry/h1$b;)Z

    move-result v0

    goto :goto_1

    .line 7
    :pswitch_5
    new-instance v0, Lio/sentry/h1$f;

    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->I()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/h1$f;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/sentry/h1;->m(Lio/sentry/h1$c;)V

    goto :goto_0

    .line 8
    :pswitch_6
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->p()V

    .line 9
    invoke-direct {p0}, Lio/sentry/h1;->e()Z

    move-result v0

    goto :goto_1

    .line 10
    :pswitch_7
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->b()V

    .line 11
    new-instance v0, Lio/sentry/h1$e;

    invoke-direct {v0, v1}, Lio/sentry/h1$e;-><init>(Lio/sentry/h1$a;)V

    invoke-direct {p0, v0}, Lio/sentry/h1;->m(Lio/sentry/h1$c;)V

    goto :goto_0

    .line 12
    :pswitch_8
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->k()V

    .line 13
    invoke-direct {p0}, Lio/sentry/h1;->e()Z

    move-result v0

    goto :goto_1

    .line 14
    :pswitch_9
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->a()V

    .line 15
    new-instance v0, Lio/sentry/h1$d;

    invoke-direct {v0, v1}, Lio/sentry/h1$d;-><init>(Lio/sentry/h1$a;)V

    invoke-direct {p0, v0}, Lio/sentry/h1;->m(Lio/sentry/h1$c;)V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_0

    .line 16
    invoke-direct {p0, p1}, Lio/sentry/h1;->k(Lio/sentry/i1;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/h1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/sentry/h1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private m(Lio/sentry/h1$c;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/h1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public c(Lio/sentry/i1;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lio/sentry/i1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/h1;->k(Lio/sentry/i1;)V

    .line 2
    invoke-direct {p0}, Lio/sentry/h1;->d()Lio/sentry/h1$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lio/sentry/h1$c;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
