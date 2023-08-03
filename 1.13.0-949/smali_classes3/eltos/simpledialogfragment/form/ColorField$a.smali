.class Leltos/simpledialogfragment/form/ColorField$a;
.super Ljava/lang/Object;
.source "ColorField.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leltos/simpledialogfragment/form/ColorField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Leltos/simpledialogfragment/form/ColorField;",
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
.method public a(Landroid/os/Parcel;)Leltos/simpledialogfragment/form/ColorField;
    .locals 1

    new-instance v0, Leltos/simpledialogfragment/form/ColorField;

    invoke-direct {v0, p1}, Leltos/simpledialogfragment/form/ColorField;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Leltos/simpledialogfragment/form/ColorField;
    .locals 0

    new-array p1, p1, [Leltos/simpledialogfragment/form/ColorField;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/form/ColorField$a;->a(Landroid/os/Parcel;)Leltos/simpledialogfragment/form/ColorField;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/form/ColorField$a;->b(I)[Leltos/simpledialogfragment/form/ColorField;

    move-result-object p1

    return-object p1
.end method
