.class public Leltos/simpledialogfragment/form/Hint;
.super Leltos/simpledialogfragment/form/FormElement;
.source "Hint.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leltos/simpledialogfragment/form/FormElement<",
        "Leltos/simpledialogfragment/form/Hint;",
        "Leltos/simpledialogfragment/form/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Leltos/simpledialogfragment/form/Hint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Leltos/simpledialogfragment/form/Hint$a;

    invoke-direct {v0}, Leltos/simpledialogfragment/form/Hint$a;-><init>()V

    sput-object v0, Leltos/simpledialogfragment/form/Hint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Leltos/simpledialogfragment/form/FormElement;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Leltos/simpledialogfragment/form/FormElement;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static plain(I)Leltos/simpledialogfragment/form/Hint;
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 2
    new-instance v0, Leltos/simpledialogfragment/form/Hint;

    invoke-direct {v0}, Leltos/simpledialogfragment/form/Hint;-><init>()V

    invoke-virtual {v0, p0}, Leltos/simpledialogfragment/form/FormElement;->label(I)Leltos/simpledialogfragment/form/FormElement;

    move-result-object p0

    check-cast p0, Leltos/simpledialogfragment/form/Hint;

    return-object p0
.end method

.method public static plain(Ljava/lang/String;)Leltos/simpledialogfragment/form/Hint;
    .locals 1

    .line 1
    new-instance v0, Leltos/simpledialogfragment/form/Hint;

    invoke-direct {v0}, Leltos/simpledialogfragment/form/Hint;-><init>()V

    invoke-virtual {v0, p0}, Leltos/simpledialogfragment/form/FormElement;->label(Ljava/lang/String;)Leltos/simpledialogfragment/form/FormElement;

    move-result-object p0

    check-cast p0, Leltos/simpledialogfragment/form/Hint;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic buildViewHolder()Leltos/simpledialogfragment/form/d;
    .locals 1

    .line 1
    invoke-virtual {p0}, Leltos/simpledialogfragment/form/Hint;->buildViewHolder()Leltos/simpledialogfragment/form/e;

    move-result-object v0

    return-object v0
.end method

.method public buildViewHolder()Leltos/simpledialogfragment/form/e;
    .locals 1

    .line 2
    new-instance v0, Leltos/simpledialogfragment/form/e;

    invoke-direct {v0, p0}, Leltos/simpledialogfragment/form/e;-><init>(Leltos/simpledialogfragment/form/Hint;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Leltos/simpledialogfragment/form/FormElement;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
