.class public final Lio/sentry/protocol/Contexts$a;
.super Ljava/lang/Object;
.source "Contexts.java"

# interfaces
.implements Lio/sentry/c1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/Contexts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/c1<",
        "Lio/sentry/protocol/Contexts;",
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

    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/Contexts$a;->b(Lio/sentry/i1;Lio/sentry/o0;)Lio/sentry/protocol/Contexts;

    move-result-object p1

    return-object p1
.end method

.method public b(Lio/sentry/i1;Lio/sentry/o0;)Lio/sentry/protocol/Contexts;
    .locals 4
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
    new-instance v0, Lio/sentry/protocol/Contexts;

    invoke-direct {v0}, Lio/sentry/protocol/Contexts;-><init>()V

    .line 2
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->b()V

    .line 3
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->X()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v1, v2, :cond_9

    .line 4
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->I()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "runtime"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x7

    goto :goto_1

    :sswitch_1
    const-string v3, "browser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x6

    goto :goto_1

    :sswitch_2
    const-string v3, "trace"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x5

    goto :goto_1

    :sswitch_3
    const-string v3, "gpu"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_4
    const-string v3, "app"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_5
    const-string v3, "os"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_6
    const-string v3, "response"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_7
    const-string v3, "device"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 6
    invoke-virtual {p1}, Lio/sentry/i1;->C0()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :pswitch_0
    new-instance v1, Lio/sentry/protocol/p$a;

    invoke-direct {v1}, Lio/sentry/protocol/p$a;-><init>()V

    invoke-virtual {v1, p1, p2}, Lio/sentry/protocol/p$a;->b(Lio/sentry/i1;Lio/sentry/o0;)Lio/sentry/protocol/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Contexts;->setRuntime(Lio/sentry/protocol/p;)V

    goto/16 :goto_0

    .line 9
    :pswitch_1
    new-instance v1, Lio/sentry/protocol/b$a;

    invoke-direct {v1}, Lio/sentry/protocol/b$a;-><init>()V

    invoke-virtual {v1, p1, p2}, Lio/sentry/protocol/b$a;->b(Lio/sentry/i1;Lio/sentry/o0;)Lio/sentry/protocol/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Contexts;->setBrowser(Lio/sentry/protocol/b;)V

    goto/16 :goto_0

    .line 10
    :pswitch_2
    new-instance v1, Lio/sentry/f5$a;

    invoke-direct {v1}, Lio/sentry/f5$a;-><init>()V

    invoke-virtual {v1, p1, p2}, Lio/sentry/f5$a;->b(Lio/sentry/i1;Lio/sentry/o0;)Lio/sentry/f5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Contexts;->setTrace(Lio/sentry/f5;)V

    goto/16 :goto_0

    .line 11
    :pswitch_3
    new-instance v1, Lio/sentry/protocol/d$a;

    invoke-direct {v1}, Lio/sentry/protocol/d$a;-><init>()V

    invoke-virtual {v1, p1, p2}, Lio/sentry/protocol/d$a;->b(Lio/sentry/i1;Lio/sentry/o0;)Lio/sentry/protocol/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Contexts;->setGpu(Lio/sentry/protocol/d;)V

    goto/16 :goto_0

    .line 12
    :pswitch_4
    new-instance v1, Lio/sentry/protocol/a$a;

    invoke-direct {v1}, Lio/sentry/protocol/a$a;-><init>()V

    invoke-virtual {v1, p1, p2}, Lio/sentry/protocol/a$a;->b(Lio/sentry/i1;Lio/sentry/o0;)Lio/sentry/protocol/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Contexts;->setApp(Lio/sentry/protocol/a;)V

    goto/16 :goto_0

    .line 13
    :pswitch_5
    new-instance v1, Lio/sentry/protocol/h$a;

    invoke-direct {v1}, Lio/sentry/protocol/h$a;-><init>()V

    .line 14
    invoke-virtual {v1, p1, p2}, Lio/sentry/protocol/h$a;->b(Lio/sentry/i1;Lio/sentry/o0;)Lio/sentry/protocol/h;

    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lio/sentry/protocol/Contexts;->setOperatingSystem(Lio/sentry/protocol/h;)V

    goto/16 :goto_0

    .line 16
    :pswitch_6
    new-instance v1, Lio/sentry/protocol/j$a;

    invoke-direct {v1}, Lio/sentry/protocol/j$a;-><init>()V

    invoke-virtual {v1, p1, p2}, Lio/sentry/protocol/j$a;->b(Lio/sentry/i1;Lio/sentry/o0;)Lio/sentry/protocol/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Contexts;->setResponse(Lio/sentry/protocol/j;)V

    goto/16 :goto_0

    .line 17
    :pswitch_7
    new-instance v1, Lio/sentry/protocol/Device$a;

    invoke-direct {v1}, Lio/sentry/protocol/Device$a;-><init>()V

    invoke-virtual {v1, p1, p2}, Lio/sentry/protocol/Device$a;->b(Lio/sentry/i1;Lio/sentry/o0;)Lio/sentry/protocol/Device;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Contexts;->setDevice(Lio/sentry/protocol/Device;)V

    goto/16 :goto_0

    .line 18
    :cond_9
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->p()V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f94e1aa -> :sswitch_7
        -0x1448ebbf -> :sswitch_6
        0xde4 -> :sswitch_5
        0x17a21 -> :sswitch_4
        0x190ac -> :sswitch_3
        0x697f145 -> :sswitch_2
        0x8ff2b28 -> :sswitch_1
        0x5c71cfd8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
