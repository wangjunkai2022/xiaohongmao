.class public final Lio/sentry/protocol/Device$a;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Lio/sentry/c1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/c1<",
        "Lio/sentry/protocol/Device;",
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

    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/Device$a;->b(Lio/sentry/i1;Lio/sentry/o0;)Lio/sentry/protocol/Device;

    move-result-object p1

    return-object p1
.end method

.method public b(Lio/sentry/i1;Lio/sentry/o0;)Lio/sentry/protocol/Device;
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
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->b()V

    .line 2
    new-instance v0, Lio/sentry/protocol/Device;

    invoke-direct {v0}, Lio/sentry/protocol/Device;-><init>()V

    const/4 v1, 0x0

    .line 3
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->X()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v2, v3, :cond_21

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
    const-string v4, "screen_height_pixels"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v3, 0x1e

    goto/16 :goto_1

    :sswitch_1
    const-string v4, "free_storage"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v3, 0x1d

    goto/16 :goto_1

    :sswitch_2
    const-string v4, "external_free_storage"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v3, 0x1c

    goto/16 :goto_1

    :sswitch_3
    const-string v4, "charging"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v3, 0x1b

    goto/16 :goto_1

    :sswitch_4
    const-string v4, "memory_size"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v3, 0x1a

    goto/16 :goto_1

    :sswitch_5
    const-string v4, "usable_memory"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v3, 0x19

    goto/16 :goto_1

    :sswitch_6
    const-string v4, "storage_size"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 v3, 0x18

    goto/16 :goto_1

    :sswitch_7
    const-string v4, "external_storage_size"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto/16 :goto_1

    :cond_8
    const/16 v3, 0x17

    goto/16 :goto_1

    :sswitch_8
    const-string v4, "screen_width_pixels"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto/16 :goto_1

    :cond_9
    const/16 v3, 0x16

    goto/16 :goto_1

    :sswitch_9
    const-string v4, "connection_type"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto/16 :goto_1

    :cond_a
    const/16 v3, 0x15

    goto/16 :goto_1

    :sswitch_a
    const-string v4, "model"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto/16 :goto_1

    :cond_b
    const/16 v3, 0x14

    goto/16 :goto_1

    :sswitch_b
    const-string v4, "brand"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_1

    :cond_c
    const/16 v3, 0x13

    goto/16 :goto_1

    :sswitch_c
    const-string v4, "archs"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto/16 :goto_1

    :cond_d
    const/16 v3, 0x12

    goto/16 :goto_1

    :sswitch_d
    const-string v4, "low_memory"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto/16 :goto_1

    :cond_e
    const/16 v3, 0x11

    goto/16 :goto_1

    :sswitch_e
    const-string v4, "name"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    goto/16 :goto_1

    :cond_f
    const/16 v3, 0x10

    goto/16 :goto_1

    :sswitch_f
    const-string v4, "id"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    goto/16 :goto_1

    :cond_10
    const/16 v3, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string v4, "free_memory"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    goto/16 :goto_1

    :cond_11
    const/16 v3, 0xe

    goto/16 :goto_1

    :sswitch_11
    const-string v4, "screen_dpi"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    goto/16 :goto_1

    :cond_12
    const/16 v3, 0xd

    goto/16 :goto_1

    :sswitch_12
    const-string v4, "screen_density"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    goto/16 :goto_1

    :cond_13
    const/16 v3, 0xc

    goto/16 :goto_1

    :sswitch_13
    const-string v4, "model_id"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    goto/16 :goto_1

    :cond_14
    const/16 v3, 0xb

    goto/16 :goto_1

    :sswitch_14
    const-string v4, "battery_level"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    goto/16 :goto_1

    :cond_15
    const/16 v3, 0xa

    goto/16 :goto_1

    :sswitch_15
    const-string v4, "online"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    goto/16 :goto_1

    :cond_16
    const/16 v3, 0x9

    goto/16 :goto_1

    :sswitch_16
    const-string v4, "locale"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    goto/16 :goto_1

    :cond_17
    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_17
    const-string v4, "family"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    goto :goto_1

    :cond_18
    const/4 v3, 0x7

    goto :goto_1

    :sswitch_18
    const-string v4, "battery_temperature"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    goto :goto_1

    :cond_19
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_19
    const-string v4, "orientation"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    goto :goto_1

    :cond_1a
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_1a
    const-string v4, "language"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    goto :goto_1

    :cond_1b
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_1b
    const-string v4, "manufacturer"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    goto :goto_1

    :cond_1c
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_1c
    const-string v4, "simulator"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    goto :goto_1

    :cond_1d
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_1d
    const-string v4, "boot_time"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    goto :goto_1

    :cond_1e
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_1e
    const-string v4, "timezone"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    goto :goto_1

    :cond_1f
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    if-nez v1, :cond_20

    .line 6
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    :cond_20
    invoke-virtual {p1, p2, v1, v2}, Lio/sentry/i1;->G0(Lio/sentry/o0;Ljava/util/Map;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8
    :pswitch_0
    invoke-virtual {p1}, Lio/sentry/i1;->y0()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/Device;->o(Lio/sentry/protocol/Device;Ljava/lang/Integer;)Ljava/lang/Integer;

    goto/16 :goto_0

    .line 9
    :pswitch_1
    invoke-virtual {p1}, Lio/sentry/i1;->A0()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/Device;->j(Lio/sentry/protocol/Device;Ljava/lang/Long;)Ljava/lang/Long;

    goto/16 :goto_0

    .line 10
    :pswitch_2
    invoke-virtual {p1}, Lio/sentry/i1;->A0()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/Device;->l(Lio/sentry/protocol/Device;Ljava/lang/Long;)Ljava/lang/Long;

    goto/16 :goto_0

    .line 11
    :pswitch_3
    invoke-virtual {p1}, Lio/sentry/i1;->t0()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/Device;->D(Lio/sentry/protocol/Device;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 12
    :pswitch_4
    invoke-virtual {p1}, Lio/sentry/i1;->A0()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/Device;->e(Lio/sentry/protocol/Device;Ljava/lang/Long;)Ljava/lang/Long;

    goto/16 :goto_0

    .line 13
    :pswitch_5
    invoke-virtual {p1}, Lio/sentry/i1;->A0()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/Device;->g(Lio/sentry/protocol/Device;Ljava/lang/Long;)Ljava/lang/Long;

    goto/16 :goto_0

    .line 14
    :pswitch_6
    invoke-virtual {p1}, Lio/sentry/i1;->A0()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/Device;->i(Lio/sentry/protocol/Device;Ljava/lang/Long;)Ljava/lang/Long;

    goto/16 :goto_0

    .line 15
    :pswitch_7
    invoke-virtual {p1}, Lio/sentry/i1;->A0()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/Device;->k(Lio/sentry/protocol/Device;Ljava/lang/Long;)Ljava/lang/Long;

    goto/16 :goto_0

    .line 16
    :pswitch_8
    invoke-virtual {p1}, Lio/sentry/i1;->y0()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/Device;->m(Lio/sentry/protocol/Device;Ljava/lang/Integer;)Ljava/lang/Integer;

    goto/16 :goto_0

    .line 17
    :pswitch_9
    invoke-virtual {p1}, Lio/sentry/i1;->E0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/Device;->v(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 18
    :pswitch_a
    invoke-virtual {p1}, Lio/sentry/i1;->E0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/Device;->z(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 19
    :pswitch_b
    invoke-virtual {p1}, Lio/sentry/i1;->E0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/Device;->n(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 20
    :pswitch_c
    invoke-virtual {p1}, Lio/sentry/i1;->C0()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 21
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 22
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 23
    invoke-static {v0, v3}, Lio/sentry/protocol/Device;->B(Lio/sentry/protocol/Device;[Ljava/lang/String;)[Ljava/lang/String;

    goto/16 :goto_0

    .line 24
    :pswitch_d
    invoke-virtual {p1}, Lio/sentry/i1;->t0()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/Device;->h(Lio/sentry/protocol/Device;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 25
    :pswitch_e
    invoke-virtual {p1}, Lio/sentry/i1;->E0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/Device;->a(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 26
    :pswitch_f
    invoke-virtual {p1}, Lio/sentry/i1;->E0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/Device;->t(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 27
    :pswitch_10
    invoke-virtual {p1}, Lio/sentry/i1;->A0()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/Device;->f(Lio/sentry/protocol/Device;Ljava/lang/Long;)Ljava/lang/Long;

    goto/16 :goto_0

    .line 28
    :pswitch_11
    invoke-virtual {p1}, Lio/sentry/i1;->y0()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/Device;->q(Lio/sentry/protocol/Device;Ljava/lang/Integer;)Ljava/lang/Integer;

    goto/16 :goto_0

    .line 29
    :pswitch_12
    invoke-virtual {p1}, Lio/sentry/i1;->x0()Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/Device;->p(Lio/sentry/protocol/Device;Ljava/lang/Float;)Ljava/lang/Float;

    goto/16 :goto_0

    .line 30
    :pswitch_13
    invoke-virtual {p1}, Lio/sentry/i1;->E0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/Device;->A(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 31
    :pswitch_14
    invoke-virtual {p1}, Lio/sentry/i1;->x0()Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/Device;->C(Lio/sentry/protocol/Device;Ljava/lang/Float;)Ljava/lang/Float;

    goto/16 :goto_0

    .line 32
    :pswitch_15
    invoke-virtual {p1}, Lio/sentry/i1;->t0()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/Device;->E(Lio/sentry/protocol/Device;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 33
    :pswitch_16
    invoke-virtual {p1}, Lio/sentry/i1;->E0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/Device;->x(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 34
    :pswitch_17
    invoke-virtual {p1}, Lio/sentry/i1;->E0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/Device;->y(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 35
    :pswitch_18
    invoke-virtual {p1}, Lio/sentry/i1;->x0()Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/Device;->w(Lio/sentry/protocol/Device;Ljava/lang/Float;)Ljava/lang/Float;

    goto/16 :goto_0

    .line 36
    :pswitch_19
    new-instance v2, Lio/sentry/protocol/Device$DeviceOrientation$a;

    invoke-direct {v2}, Lio/sentry/protocol/Device$DeviceOrientation$a;-><init>()V

    invoke-virtual {p1, p2, v2}, Lio/sentry/i1;->D0(Lio/sentry/o0;Lio/sentry/c1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/protocol/Device$DeviceOrientation;

    invoke-static {v0, v2}, Lio/sentry/protocol/Device;->b(Lio/sentry/protocol/Device;Lio/sentry/protocol/Device$DeviceOrientation;)Lio/sentry/protocol/Device$DeviceOrientation;

    goto/16 :goto_0

    .line 37
    :pswitch_1a
    invoke-virtual {p1}, Lio/sentry/i1;->E0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/Device;->u(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 38
    :pswitch_1b
    invoke-virtual {p1}, Lio/sentry/i1;->E0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/Device;->c(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 39
    :pswitch_1c
    invoke-virtual {p1}, Lio/sentry/i1;->t0()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/Device;->d(Lio/sentry/protocol/Device;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 40
    :pswitch_1d
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->X()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->STRING:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v2, v3, :cond_0

    .line 41
    invoke-virtual {p1, p2}, Lio/sentry/i1;->u0(Lio/sentry/o0;)Ljava/util/Date;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/Device;->r(Lio/sentry/protocol/Device;Ljava/util/Date;)Ljava/util/Date;

    goto/16 :goto_0

    .line 42
    :pswitch_1e
    invoke-virtual {p1, p2}, Lio/sentry/i1;->F0(Lio/sentry/o0;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/protocol/Device;->s(Lio/sentry/protocol/Device;Ljava/util/TimeZone;)Ljava/util/TimeZone;

    goto/16 :goto_0

    .line 43
    :cond_21
    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setUnknown(Ljava/util/Map;)V

    .line 44
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/a;->p()V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7bc0b807 -> :sswitch_1e
        -0x77f42806 -> :sswitch_1d
        -0x7618bbfc -> :sswitch_1c
        -0x7561dc2f -> :sswitch_1b
        -0x602d6ca8 -> :sswitch_1a
        -0x55cd0a30 -> :sswitch_19
        -0x5412d9be -> :sswitch_18
        -0x4c67a49c -> :sswitch_17
        -0x4169f1a6 -> :sswitch_16
        -0x3c5549ad -> :sswitch_15
        -0x3449d12e -> :sswitch_14
        -0x24e5c60f -> :sswitch_13
        -0x21df2feb -> :sswitch_12
        -0x18dba0f6 -> :sswitch_11
        -0x8232dcc -> :sswitch_10
        0xd1b -> :sswitch_f
        0x337a8b -> :sswitch_e
        0x386704c -> :sswitch_d
        0x58c3add -> :sswitch_c
        0x59a4b87 -> :sswitch_b
        0x633fb29 -> :sswitch_a
        0x2b9f63fb -> :sswitch_9
        0x30bf1c39 -> :sswitch_8
        0x311b7339 -> :sswitch_7
        0x357dab45 -> :sswitch_6
        0x4f5c8e28 -> :sswitch_5
        0x5490d47f -> :sswitch_4
        0x55996271 -> :sswitch_3
        0x56769b9c -> :sswitch_2
        0x5ad8d3a8 -> :sswitch_1
        0x5cc30632 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
