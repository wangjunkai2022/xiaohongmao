.class public final Lio/sentry/m3$a;
.super Ljava/lang/Object;
.source "SentryEnvelopeHeader.java"

# interfaces
.implements Lio/sentry/c1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/m3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/c1<",
        "Lio/sentry/m3;",
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

    invoke-virtual {p0, p1, p2}, Lio/sentry/m3$a;->b(Lio/sentry/i1;Lio/sentry/o0;)Lio/sentry/m3;

    move-result-object p1

    return-object p1
.end method

.method public b(Lio/sentry/i1;Lio/sentry/o0;)Lio/sentry/m3;
    .locals 7
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

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    .line 2
    :goto_0
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->X()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v4

    sget-object v5, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v4, v5, :cond_4

    .line 3
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->I()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "event_id"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x2

    goto :goto_1

    :sswitch_1
    const-string v6, "trace"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    goto :goto_1

    :sswitch_2
    const-string v6, "sdk"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    packed-switch v5, :pswitch_data_0

    if-nez v3, :cond_3

    .line 5
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 6
    :cond_3
    invoke-virtual {p1, p2, v3, v4}, Lio/sentry/i1;->G0(Lio/sentry/o0;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :pswitch_0
    new-instance v0, Lio/sentry/protocol/n$a;

    invoke-direct {v0}, Lio/sentry/protocol/n$a;-><init>()V

    invoke-virtual {p1, p2, v0}, Lio/sentry/i1;->D0(Lio/sentry/o0;Lio/sentry/c1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/n;

    goto :goto_0

    .line 8
    :pswitch_1
    new-instance v2, Lio/sentry/m5$b;

    invoke-direct {v2}, Lio/sentry/m5$b;-><init>()V

    invoke-virtual {p1, p2, v2}, Lio/sentry/i1;->D0(Lio/sentry/o0;Lio/sentry/c1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/m5;

    goto :goto_0

    .line 9
    :pswitch_2
    new-instance v1, Lio/sentry/protocol/l$a;

    invoke-direct {v1}, Lio/sentry/protocol/l$a;-><init>()V

    invoke-virtual {p1, p2, v1}, Lio/sentry/i1;->D0(Lio/sentry/o0;Lio/sentry/c1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/protocol/l;

    goto :goto_0

    .line 10
    :cond_4
    new-instance p2, Lio/sentry/m3;

    invoke-direct {p2, v0, v1, v2}, Lio/sentry/m3;-><init>(Lio/sentry/protocol/n;Lio/sentry/protocol/l;Lio/sentry/m5;)V

    .line 11
    invoke-virtual {p2, v3}, Lio/sentry/m3;->setUnknown(Ljava/util/Map;)V

    .line 12
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->p()V

    return-object p2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1bc3a -> :sswitch_2
        0x697f145 -> :sswitch_1
        0x1093c0e0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
