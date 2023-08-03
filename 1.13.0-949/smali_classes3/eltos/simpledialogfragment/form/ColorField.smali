.class public Leltos/simpledialogfragment/form/ColorField;
.super Leltos/simpledialogfragment/form/FormElement;
.source "ColorField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leltos/simpledialogfragment/form/FormElement<",
        "Leltos/simpledialogfragment/form/ColorField;",
        "Leltos/simpledialogfragment/form/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final AUTO:I = 0xffffff
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Leltos/simpledialogfragment/form/ColorField;",
            ">;"
        }
    .end annotation
.end field

.field public static final NONE:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field


# instance fields
.field protected allowCustom:Z

.field protected colors:[I

.field protected outline:I

.field private preset:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private presetId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Leltos/simpledialogfragment/form/ColorField$a;

    invoke-direct {v0}, Leltos/simpledialogfragment/form/ColorField$a;-><init>()V

    sput-object v0, Leltos/simpledialogfragment/form/ColorField;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 7
    invoke-direct {p0, p1}, Leltos/simpledialogfragment/form/FormElement;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Leltos/simpledialogfragment/form/ColorField;->preset:I

    const/4 v1, -0x1

    .line 9
    iput v1, p0, Leltos/simpledialogfragment/form/ColorField;->presetId:I

    .line 10
    sget-object v1, Leltos/simpledialogfragment/color/a;->x1:[I

    iput-object v1, p0, Leltos/simpledialogfragment/form/ColorField;->colors:[I

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Leltos/simpledialogfragment/form/ColorField;->allowCustom:Z

    .line 12
    iput v0, p0, Leltos/simpledialogfragment/form/ColorField;->outline:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Leltos/simpledialogfragment/form/ColorField;->preset:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Leltos/simpledialogfragment/form/ColorField;->presetId:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Leltos/simpledialogfragment/form/ColorField;->colors:[I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Leltos/simpledialogfragment/form/ColorField;->allowCustom:Z

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Leltos/simpledialogfragment/form/ColorField;->outline:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Leltos/simpledialogfragment/form/FormElement;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Leltos/simpledialogfragment/form/ColorField;->preset:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Leltos/simpledialogfragment/form/ColorField;->presetId:I

    .line 4
    sget-object v0, Leltos/simpledialogfragment/color/a;->x1:[I

    iput-object v0, p0, Leltos/simpledialogfragment/form/ColorField;->colors:[I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Leltos/simpledialogfragment/form/ColorField;->allowCustom:Z

    .line 6
    iput p1, p0, Leltos/simpledialogfragment/form/ColorField;->outline:I

    return-void
.end method

.method public static picker(Ljava/lang/String;)Leltos/simpledialogfragment/form/ColorField;
    .locals 1

    new-instance v0, Leltos/simpledialogfragment/form/ColorField;

    invoke-direct {v0, p0}, Leltos/simpledialogfragment/form/ColorField;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public allowCustom(Z)Leltos/simpledialogfragment/form/ColorField;
    .locals 0

    iput-boolean p1, p0, Leltos/simpledialogfragment/form/ColorField;->allowCustom:Z

    return-object p0
.end method

.method public buildViewHolder()Leltos/simpledialogfragment/form/b;
    .locals 1

    .line 2
    new-instance v0, Leltos/simpledialogfragment/form/b;

    invoke-direct {v0, p0}, Leltos/simpledialogfragment/form/b;-><init>(Leltos/simpledialogfragment/form/ColorField;)V

    return-object v0
.end method

.method public bridge synthetic buildViewHolder()Leltos/simpledialogfragment/form/d;
    .locals 1

    .line 1
    invoke-virtual {p0}, Leltos/simpledialogfragment/form/ColorField;->buildViewHolder()Leltos/simpledialogfragment/form/b;

    move-result-object v0

    return-object v0
.end method

.method public color(I)Leltos/simpledialogfragment/form/ColorField;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Leltos/simpledialogfragment/form/ColorField;->preset:I

    return-object p0
.end method

.method public colorRes(I)Leltos/simpledialogfragment/form/ColorField;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    iput p1, p0, Leltos/simpledialogfragment/form/ColorField;->presetId:I

    return-object p0
.end method

.method public colors(Landroid/content/Context;I)Leltos/simpledialogfragment/form/ColorField;
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/ArrayRes;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/form/ColorField;->colors([I)Leltos/simpledialogfragment/form/ColorField;

    move-result-object p1

    return-object p1
.end method

.method public colors([I)Leltos/simpledialogfragment/form/ColorField;
    .locals 0
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Leltos/simpledialogfragment/form/ColorField;->colors:[I

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getInitialColor(Landroid/content/Context;)I
    .locals 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    iget v0, p0, Leltos/simpledialogfragment/form/ColorField;->presetId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Leltos/simpledialogfragment/form/ColorField;->presetId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    .line 3
    :cond_0
    iget p1, p0, Leltos/simpledialogfragment/form/ColorField;->preset:I

    return p1
.end method

.method public showOutline(I)Leltos/simpledialogfragment/form/ColorField;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Leltos/simpledialogfragment/form/ColorField;->outline:I

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Leltos/simpledialogfragment/form/FormElement;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget p2, p0, Leltos/simpledialogfragment/form/ColorField;->preset:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Leltos/simpledialogfragment/form/ColorField;->presetId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object p2, p0, Leltos/simpledialogfragment/form/ColorField;->colors:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 5
    iget-boolean p2, p0, Leltos/simpledialogfragment/form/ColorField;->allowCustom:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 6
    iget p2, p0, Leltos/simpledialogfragment/form/ColorField;->outline:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
