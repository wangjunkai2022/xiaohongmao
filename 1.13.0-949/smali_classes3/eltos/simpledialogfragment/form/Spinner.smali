.class public Leltos/simpledialogfragment/form/Spinner;
.super Leltos/simpledialogfragment/form/FormElement;
.source "Spinner.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leltos/simpledialogfragment/form/FormElement<",
        "Leltos/simpledialogfragment/form/Spinner;",
        "Leltos/simpledialogfragment/form/h;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Leltos/simpledialogfragment/form/Spinner;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private itemArrayRes:I

.field private itemStringResArray:[I

.field private items:[Ljava/lang/String;

.field private placeholder:Ljava/lang/String;

.field private placeholderResourceId:I

.field position:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Leltos/simpledialogfragment/form/Spinner$a;

    invoke-direct {v0}, Leltos/simpledialogfragment/form/Spinner$a;-><init>()V

    sput-object v0, Leltos/simpledialogfragment/form/Spinner;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 8
    invoke-direct {p0, p1}, Leltos/simpledialogfragment/form/FormElement;-><init>(Landroid/os/Parcel;)V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Leltos/simpledialogfragment/form/Spinner;->itemArrayRes:I

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Leltos/simpledialogfragment/form/Spinner;->itemStringResArray:[I

    .line 11
    iput-object v1, p0, Leltos/simpledialogfragment/form/Spinner;->items:[Ljava/lang/String;

    .line 12
    iput-object v1, p0, Leltos/simpledialogfragment/form/Spinner;->placeholder:Ljava/lang/String;

    .line 13
    iput v0, p0, Leltos/simpledialogfragment/form/Spinner;->placeholderResourceId:I

    .line 14
    iput v0, p0, Leltos/simpledialogfragment/form/Spinner;->position:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Leltos/simpledialogfragment/form/Spinner;->itemArrayRes:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Leltos/simpledialogfragment/form/Spinner;->itemStringResArray:[I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leltos/simpledialogfragment/form/Spinner;->items:[Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leltos/simpledialogfragment/form/Spinner;->placeholder:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Leltos/simpledialogfragment/form/Spinner;->placeholderResourceId:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Leltos/simpledialogfragment/form/Spinner;->position:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Leltos/simpledialogfragment/form/FormElement;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Leltos/simpledialogfragment/form/Spinner;->itemArrayRes:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Leltos/simpledialogfragment/form/Spinner;->itemStringResArray:[I

    .line 4
    iput-object v0, p0, Leltos/simpledialogfragment/form/Spinner;->items:[Ljava/lang/String;

    .line 5
    iput-object v0, p0, Leltos/simpledialogfragment/form/Spinner;->placeholder:Ljava/lang/String;

    .line 6
    iput p1, p0, Leltos/simpledialogfragment/form/Spinner;->placeholderResourceId:I

    .line 7
    iput p1, p0, Leltos/simpledialogfragment/form/Spinner;->position:I

    return-void
.end method

.method public static plain(Ljava/lang/String;)Leltos/simpledialogfragment/form/Spinner;
    .locals 1

    new-instance v0, Leltos/simpledialogfragment/form/Spinner;

    invoke-direct {v0, p0}, Leltos/simpledialogfragment/form/Spinner;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic buildViewHolder()Leltos/simpledialogfragment/form/d;
    .locals 1

    .line 1
    invoke-virtual {p0}, Leltos/simpledialogfragment/form/Spinner;->buildViewHolder()Leltos/simpledialogfragment/form/h;

    move-result-object v0

    return-object v0
.end method

.method public buildViewHolder()Leltos/simpledialogfragment/form/h;
    .locals 1

    .line 2
    new-instance v0, Leltos/simpledialogfragment/form/h;

    invoke-direct {v0, p0}, Leltos/simpledialogfragment/form/h;-><init>(Leltos/simpledialogfragment/form/Spinner;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getItems(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/form/Spinner;->items:[Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Leltos/simpledialogfragment/form/Spinner;->itemStringResArray:[I

    if-eqz v0, :cond_2

    .line 3
    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Leltos/simpledialogfragment/form/Spinner;->itemStringResArray:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 5
    aget v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 6
    :cond_2
    iget v0, p0, Leltos/simpledialogfragment/form/Spinner;->itemArrayRes:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Leltos/simpledialogfragment/form/Spinner;->itemArrayRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getPlaceholderText(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/form/Spinner;->placeholder:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget v0, p0, Leltos/simpledialogfragment/form/Spinner;->placeholderResourceId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public items(I)Leltos/simpledialogfragment/form/Spinner;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ArrayRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Leltos/simpledialogfragment/form/Spinner;->itemArrayRes:I

    return-object p0
.end method

.method public varargs items([I)Leltos/simpledialogfragment/form/Spinner;
    .locals 1
    .param p1    # [I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 2
    array-length v0, p1

    if-lez v0, :cond_0

    .line 3
    iput-object p1, p0, Leltos/simpledialogfragment/form/Spinner;->itemStringResArray:[I

    :cond_0
    return-object p0
.end method

.method public varargs items([Ljava/lang/String;)Leltos/simpledialogfragment/form/Spinner;
    .locals 1

    if-eqz p1, :cond_0

    .line 4
    array-length v0, p1

    if-lez v0, :cond_0

    .line 5
    iput-object p1, p0, Leltos/simpledialogfragment/form/Spinner;->items:[Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public placeholder(I)Leltos/simpledialogfragment/form/Spinner;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 2
    iput p1, p0, Leltos/simpledialogfragment/form/Spinner;->placeholderResourceId:I

    return-object p0
.end method

.method public placeholder(Ljava/lang/String;)Leltos/simpledialogfragment/form/Spinner;
    .locals 0

    .line 1
    iput-object p1, p0, Leltos/simpledialogfragment/form/Spinner;->placeholder:Ljava/lang/String;

    return-object p0
.end method

.method public preset(I)Leltos/simpledialogfragment/form/Spinner;
    .locals 0

    iput p1, p0, Leltos/simpledialogfragment/form/Spinner;->position:I

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Leltos/simpledialogfragment/form/Spinner;->itemArrayRes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Leltos/simpledialogfragment/form/Spinner;->itemStringResArray:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3
    iget-object p2, p0, Leltos/simpledialogfragment/form/Spinner;->items:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Leltos/simpledialogfragment/form/Spinner;->placeholder:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget p2, p0, Leltos/simpledialogfragment/form/Spinner;->placeholderResourceId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Leltos/simpledialogfragment/form/Spinner;->position:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
