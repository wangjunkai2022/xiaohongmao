.class public final Lio/sentry/f$a;
.super Ljava/lang/Object;
.source "Breadcrumb.java"

# interfaces
.implements Lio/sentry/c1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/c1<",
        "Lio/sentry/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lio/sentry/i1;Lio/sentry/o0;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lio/sentry/i1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/sentry/f$a;->b(Lio/sentry/i1;Lio/sentry/o0;)Lio/sentry/f;

    move-result-object p1

    return-object p1
.end method

.method public b(Lio/sentry/i1;Lio/sentry/o0;)Lio/sentry/f;
    .locals 11
    .param p1    # Lio/sentry/i1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->b()V

    .line 2
    invoke-static {}, Lio/sentry/k;->c()Ljava/util/Date;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    .line 4
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->X()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v7

    sget-object v8, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v7, v8, :cond_8

    .line 5
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->I()Ljava/lang/String;

    move-result-object v7

    .line 6
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    const/4 v8, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, 0x0

    sparse-switch v9, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v9, "message"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x5

    goto :goto_1

    :sswitch_1
    const-string v9, "level"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x4

    goto :goto_1

    :sswitch_2
    const-string v9, "timestamp"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_1

    :cond_3
    const/4 v8, 0x3

    goto :goto_1

    :sswitch_3
    const-string v9, "category"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_1

    :cond_4
    const/4 v8, 0x2

    goto :goto_1

    :sswitch_4
    const-string v9, "type"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_1

    :cond_5
    const/4 v8, 0x1

    goto :goto_1

    :sswitch_5
    const-string v9, "data"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_1

    :cond_6
    const/4 v8, 0x0

    :goto_1
    packed-switch v8, :pswitch_data_0

    if-nez v6, :cond_7

    .line 7
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 8
    :cond_7
    invoke-virtual {p1, p2, v6, v7}, Lio/sentry/i1;->G0(Lio/sentry/o0;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :pswitch_0
    invoke-virtual {p1}, Lio/sentry/i1;->E0()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 10
    :pswitch_1
    :try_start_0
    new-instance v7, Lio/sentry/SentryLevel$a;

    invoke-direct {v7}, Lio/sentry/SentryLevel$a;-><init>()V

    invoke-virtual {v7, p1, p2}, Lio/sentry/SentryLevel$a;->b(Lio/sentry/i1;Lio/sentry/o0;)Lio/sentry/SentryLevel;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    .line 11
    sget-object v8, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v9, v10, [Ljava/lang/Object;

    const-string v10, "Error when deserializing SentryLevel"

    invoke-interface {p2, v8, v7, v10, v9}, Lio/sentry/o0;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 12
    :pswitch_2
    invoke-virtual {p1, p2}, Lio/sentry/i1;->u0(Lio/sentry/o0;)Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_0

    move-object v0, v7

    goto/16 :goto_0

    .line 13
    :pswitch_3
    invoke-virtual {p1}, Lio/sentry/i1;->E0()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 14
    :pswitch_4
    invoke-virtual {p1}, Lio/sentry/i1;->E0()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 15
    :pswitch_5
    invoke-virtual {p1}, Lio/sentry/i1;->C0()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 16
    invoke-static {v7}, Lio/sentry/util/a;->e(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_0

    move-object v1, v7

    goto/16 :goto_0

    .line 17
    :cond_8
    new-instance p2, Lio/sentry/f;

    invoke-direct {p2, v0}, Lio/sentry/f;-><init>(Ljava/util/Date;)V

    .line 18
    invoke-static {p2, v2}, Lio/sentry/f;->a(Lio/sentry/f;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    invoke-static {p2, v3}, Lio/sentry/f;->b(Lio/sentry/f;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    invoke-static {p2, v1}, Lio/sentry/f;->c(Lio/sentry/f;Ljava/util/Map;)Ljava/util/Map;

    .line 21
    invoke-static {p2, v4}, Lio/sentry/f;->d(Lio/sentry/f;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    invoke-static {p2, v5}, Lio/sentry/f;->e(Lio/sentry/f;Lio/sentry/SentryLevel;)Lio/sentry/SentryLevel;

    .line 23
    invoke-virtual {p2, v6}, Lio/sentry/f;->setUnknown(Ljava/util/Map;)V

    .line 24
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->p()V

    return-object p2

    nop

    :sswitch_data_0
    .sparse-switch
        0x2eefaa -> :sswitch_5
        0x368f3a -> :sswitch_4
        0x302bcfe -> :sswitch_3
        0x3492916 -> :sswitch_2
        0x6219b84 -> :sswitch_1
        0x38eb0007 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
