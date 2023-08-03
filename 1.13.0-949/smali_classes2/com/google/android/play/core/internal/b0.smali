.class public final Lcom/google/android/play/core/internal/b0;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# direct methods
.method public static a()Lcom/google/android/play/core/internal/z;
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/play/core/internal/r0;

    invoke-direct {v0}, Lcom/google/android/play/core/internal/r0;-><init>()V

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/google/android/play/core/internal/q0;

    invoke-direct {v0}, Lcom/google/android/play/core/internal/q0;-><init>()V

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/google/android/play/core/internal/n0;

    invoke-direct {v0}, Lcom/google/android/play/core/internal/n0;-><init>()V

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/google/android/play/core/internal/m0;

    invoke-direct {v0}, Lcom/google/android/play/core/internal/m0;-><init>()V

    return-object v0

    :pswitch_4
    new-instance v0, Lcom/google/android/play/core/internal/l0;

    invoke-direct {v0}, Lcom/google/android/play/core/internal/l0;-><init>()V

    return-object v0

    :pswitch_5
    new-instance v0, Lcom/google/android/play/core/internal/h0;

    invoke-direct {v0}, Lcom/google/android/play/core/internal/h0;-><init>()V

    return-object v0

    :pswitch_6
    new-instance v0, Lcom/google/android/play/core/internal/g0;

    invoke-direct {v0}, Lcom/google/android/play/core/internal/g0;-><init>()V

    return-object v0

    :cond_0
    :goto_0
    new-instance v0, Lcom/google/android/play/core/internal/t0;

    invoke-direct {v0}, Lcom/google/android/play/core/internal/t0;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
