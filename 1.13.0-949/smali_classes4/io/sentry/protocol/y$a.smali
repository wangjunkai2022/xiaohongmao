.class public final Lio/sentry/protocol/y$a;
.super Ljava/lang/Object;
.source "ViewHierarchyNode.java"

# interfaces
.implements Lio/sentry/c1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/c1<",
        "Lio/sentry/protocol/y;",
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

    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/y$a;->b(Lio/sentry/i1;Lio/sentry/o0;)Lio/sentry/protocol/y;

    move-result-object p1

    return-object p1
.end method

.method public b(Lio/sentry/i1;Lio/sentry/o0;)Lio/sentry/protocol/y;
    .locals 5
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
    new-instance v0, Lio/sentry/protocol/y;

    invoke-direct {v0}, Lio/sentry/protocol/y;-><init>()V

    .line 2
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->b()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->X()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v2, v3, :cond_c

    .line 4
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->I()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "visibility"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v3, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string v4, "children"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v3, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v4, "width"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string v4, "alpha"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x7

    goto :goto_1

    :sswitch_4
    const-string v4, "type"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_5
    const-string v4, "tag"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_6
    const-string v4, "y"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_7
    const-string v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_1

    :cond_7
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_8
    const-string v4, "height"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_1

    :cond_8
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_9
    const-string v4, "identifier"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_1

    :cond_9
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_a
    const-string v4, "rendering_system"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_1

    :cond_a
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    if-nez v1, :cond_b

    .line 6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 7
    :cond_b
    invoke-virtual {p1, p2, v1, v2}, Lio/sentry/i1;->G0(Lio/sentry/o0;Ljava/util/Map;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8
    :pswitch_0
    invoke-virtual {p1}, Lio/sentry/i1;->E0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/y;->j(Lio/sentry/protocol/y;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 9
    :pswitch_1
    invoke-virtual {p1, p2, p0}, Lio/sentry/i1;->z0(Lio/sentry/o0;Lio/sentry/c1;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/y;->b(Lio/sentry/protocol/y;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_0

    .line 10
    :pswitch_2
    invoke-virtual {p1}, Lio/sentry/i1;->v0()Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/y;->f(Lio/sentry/protocol/y;Ljava/lang/Double;)Ljava/lang/Double;

    goto/16 :goto_0

    .line 11
    :pswitch_3
    invoke-virtual {p1}, Lio/sentry/i1;->v0()Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/y;->k(Lio/sentry/protocol/y;Ljava/lang/Double;)Ljava/lang/Double;

    goto/16 :goto_0

    .line 12
    :pswitch_4
    invoke-virtual {p1}, Lio/sentry/i1;->E0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/y;->c(Lio/sentry/protocol/y;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 13
    :pswitch_5
    invoke-virtual {p1}, Lio/sentry/i1;->E0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/y;->e(Lio/sentry/protocol/y;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 14
    :pswitch_6
    invoke-virtual {p1}, Lio/sentry/i1;->v0()Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/y;->i(Lio/sentry/protocol/y;Ljava/lang/Double;)Ljava/lang/Double;

    goto/16 :goto_0

    .line 15
    :pswitch_7
    invoke-virtual {p1}, Lio/sentry/i1;->v0()Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/y;->h(Lio/sentry/protocol/y;Ljava/lang/Double;)Ljava/lang/Double;

    goto/16 :goto_0

    .line 16
    :pswitch_8
    invoke-virtual {p1}, Lio/sentry/i1;->v0()Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/y;->g(Lio/sentry/protocol/y;Ljava/lang/Double;)Ljava/lang/Double;

    goto/16 :goto_0

    .line 17
    :pswitch_9
    invoke-virtual {p1}, Lio/sentry/i1;->E0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/y;->d(Lio/sentry/protocol/y;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 18
    :pswitch_a
    invoke-virtual {p1}, Lio/sentry/i1;->E0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/y;->a(Lio/sentry/protocol/y;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 19
    :cond_c
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->p()V

    .line 20
    invoke-virtual {v0, v1}, Lio/sentry/protocol/y;->setUnknown(Ljava/util/Map;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x6a64acbe -> :sswitch_a
        -0x60775357 -> :sswitch_9
        -0x48c76ed9 -> :sswitch_8
        0x78 -> :sswitch_7
        0x79 -> :sswitch_6
        0x1bf9a -> :sswitch_5
        0x368f3a -> :sswitch_4
        0x589b15e -> :sswitch_3
        0x6be2dc6 -> :sswitch_2
        0x62ea5dff -> :sswitch_1
        0x73b66312 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
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
