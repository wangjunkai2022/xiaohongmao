.class public abstract Lcom/google/android/gms/dynamic/c$a;
.super Lcom/google/android/gms/internal/common/k;
.source "com.google.android.gms:play-services-basement@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/dynamic/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/dynamic/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/common/k;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static x(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/c;
    .locals 2
    .param p0    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/dynamic/c;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/google/android/gms/dynamic/c;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/dynamic/q;

    invoke-direct {v0, p0}, Lcom/google/android/gms/dynamic/q;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final s(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .param p2    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/d$a;->x(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    move-result-object p1

    .line 2
    invoke-interface {p0, p1}, Lcom/google/android/gms/dynamic/c;->r0(Lcom/google/android/gms/dynamic/d;)V

    .line 3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 4
    :pswitch_1
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/common/l;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 6
    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/dynamic/c;->g1(Landroid/content/Intent;I)V

    .line 7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 8
    :pswitch_2
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/common/l;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 10
    invoke-interface {p0, p1}, Lcom/google/android/gms/dynamic/c;->d1(Landroid/content/Intent;)V

    .line 11
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 12
    :pswitch_3
    invoke-static {p2}, Lcom/google/android/gms/internal/common/l;->f(Landroid/os/Parcel;)Z

    move-result p1

    .line 13
    invoke-interface {p0, p1}, Lcom/google/android/gms/dynamic/c;->B1(Z)V

    .line 14
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 15
    :pswitch_4
    invoke-static {p2}, Lcom/google/android/gms/internal/common/l;->f(Landroid/os/Parcel;)Z

    move-result p1

    .line 16
    invoke-interface {p0, p1}, Lcom/google/android/gms/dynamic/c;->b1(Z)V

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 18
    :pswitch_5
    invoke-static {p2}, Lcom/google/android/gms/internal/common/l;->f(Landroid/os/Parcel;)Z

    move-result p1

    .line 19
    invoke-interface {p0, p1}, Lcom/google/android/gms/dynamic/c;->U0(Z)V

    .line 20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 21
    :pswitch_6
    invoke-static {p2}, Lcom/google/android/gms/internal/common/l;->f(Landroid/os/Parcel;)Z

    move-result p1

    .line 22
    invoke-interface {p0, p1}, Lcom/google/android/gms/dynamic/c;->O0(Z)V

    .line 23
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 24
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/d$a;->x(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    move-result-object p1

    .line 25
    invoke-interface {p0, p1}, Lcom/google/android/gms/dynamic/c;->v1(Lcom/google/android/gms/dynamic/d;)V

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 27
    :pswitch_8
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/c;->H1()Z

    move-result p1

    .line 28
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 29
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/l;->b(Landroid/os/Parcel;Z)V

    goto/16 :goto_0

    .line 30
    :pswitch_9
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/c;->M()Z

    move-result p1

    .line 31
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 32
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/l;->b(Landroid/os/Parcel;Z)V

    goto/16 :goto_0

    .line 33
    :pswitch_a
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/c;->C()Z

    move-result p1

    .line 34
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 35
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/l;->b(Landroid/os/Parcel;Z)V

    goto/16 :goto_0

    .line 36
    :pswitch_b
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/c;->a0()Z

    move-result p1

    .line 37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 38
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/l;->b(Landroid/os/Parcel;Z)V

    goto/16 :goto_0

    .line 39
    :pswitch_c
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/c;->U()Z

    move-result p1

    .line 40
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 41
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/l;->b(Landroid/os/Parcel;Z)V

    goto/16 :goto_0

    .line 42
    :pswitch_d
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/c;->x1()Z

    move-result p1

    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 44
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/l;->b(Landroid/os/Parcel;Z)V

    goto/16 :goto_0

    .line 45
    :pswitch_e
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/c;->w1()Z

    move-result p1

    .line 46
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 47
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/l;->b(Landroid/os/Parcel;Z)V

    goto/16 :goto_0

    .line 48
    :pswitch_f
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/c;->Q()Lcom/google/android/gms/dynamic/d;

    move-result-object p1

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/l;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_0

    .line 51
    :pswitch_10
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/c;->I1()Z

    move-result p1

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/l;->b(Landroid/os/Parcel;Z)V

    goto :goto_0

    .line 54
    :pswitch_11
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/c;->e()I

    move-result p1

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 57
    :pswitch_12
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/c;->n()Lcom/google/android/gms/dynamic/c;

    move-result-object p1

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/l;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_0

    .line 60
    :pswitch_13
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/c;->A0()Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :pswitch_14
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/c;->z1()Z

    move-result p1

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/l;->b(Landroid/os/Parcel;Z)V

    goto :goto_0

    .line 66
    :pswitch_15
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/c;->D()Lcom/google/android/gms/dynamic/d;

    move-result-object p1

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/l;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_0

    .line 69
    :pswitch_16
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/c;->y1()Lcom/google/android/gms/dynamic/c;

    move-result-object p1

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/l;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_0

    .line 72
    :pswitch_17
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/c;->zzb()I

    move-result p1

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 75
    :pswitch_18
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/c;->b()Landroid/os/Bundle;

    move-result-object p1

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/l;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 78
    :pswitch_19
    invoke-interface {p0}, Lcom/google/android/gms/dynamic/c;->o()Lcom/google/android/gms/dynamic/d;

    move-result-object p1

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/l;->e(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x2
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
