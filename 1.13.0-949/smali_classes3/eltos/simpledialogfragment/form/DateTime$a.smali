.class Leltos/simpledialogfragment/form/DateTime$a;
.super Ljava/lang/Object;
.source "DateTime.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leltos/simpledialogfragment/form/DateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Leltos/simpledialogfragment/form/DateTime;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Leltos/simpledialogfragment/form/DateTime;
    .locals 1

    new-instance v0, Leltos/simpledialogfragment/form/DateTime;

    invoke-direct {v0, p1}, Leltos/simpledialogfragment/form/DateTime;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Leltos/simpledialogfragment/form/DateTime;
    .locals 0

    new-array p1, p1, [Leltos/simpledialogfragment/form/DateTime;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/form/DateTime$a;->a(Landroid/os/Parcel;)Leltos/simpledialogfragment/form/DateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/form/DateTime$a;->b(I)[Leltos/simpledialogfragment/form/DateTime;

    move-result-object p1

    return-object p1
.end method
