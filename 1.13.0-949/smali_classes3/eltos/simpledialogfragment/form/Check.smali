.class public Leltos/simpledialogfragment/form/Check;
.super Leltos/simpledialogfragment/form/FormElement;
.source "Check.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leltos/simpledialogfragment/form/FormElement<",
        "Leltos/simpledialogfragment/form/Check;",
        "Leltos/simpledialogfragment/form/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Leltos/simpledialogfragment/form/Check;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private preset:Ljava/lang/Boolean;

.field private presetId:I

.field private text:Ljava/lang/String;

.field private textResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Leltos/simpledialogfragment/form/Check$a;

    invoke-direct {v0}, Leltos/simpledialogfragment/form/Check$a;-><init>()V

    sput-object v0, Leltos/simpledialogfragment/form/Check;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 7
    invoke-direct {p0, p1}, Leltos/simpledialogfragment/form/FormElement;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Leltos/simpledialogfragment/form/Check;->text:Ljava/lang/String;

    const/4 v1, -0x1

    .line 9
    iput v1, p0, Leltos/simpledialogfragment/form/Check;->textResourceId:I

    .line 10
    iput-object v0, p0, Leltos/simpledialogfragment/form/Check;->preset:Ljava/lang/Boolean;

    .line 11
    iput v1, p0, Leltos/simpledialogfragment/form/Check;->presetId:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Leltos/simpledialogfragment/form/Check;->text:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Leltos/simpledialogfragment/form/Check;->textResourceId:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 15
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Leltos/simpledialogfragment/form/Check;->preset:Ljava/lang/Boolean;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Leltos/simpledialogfragment/form/Check;->presetId:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Leltos/simpledialogfragment/form/Check$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Leltos/simpledialogfragment/form/Check;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Leltos/simpledialogfragment/form/FormElement;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Leltos/simpledialogfragment/form/Check;->text:Ljava/lang/String;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Leltos/simpledialogfragment/form/Check;->textResourceId:I

    .line 5
    iput-object p1, p0, Leltos/simpledialogfragment/form/Check;->preset:Ljava/lang/Boolean;

    .line 6
    iput v0, p0, Leltos/simpledialogfragment/form/Check;->presetId:I

    return-void
.end method

.method public static box(Ljava/lang/String;)Leltos/simpledialogfragment/form/Check;
    .locals 1

    new-instance v0, Leltos/simpledialogfragment/form/Check;

    invoke-direct {v0, p0}, Leltos/simpledialogfragment/form/Check;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public buildViewHolder()Leltos/simpledialogfragment/form/a;
    .locals 1

    .line 2
    new-instance v0, Leltos/simpledialogfragment/form/a;

    invoke-direct {v0, p0}, Leltos/simpledialogfragment/form/a;-><init>(Leltos/simpledialogfragment/form/Check;)V

    return-object v0
.end method

.method public bridge synthetic buildViewHolder()Leltos/simpledialogfragment/form/d;
    .locals 1

    .line 1
    invoke-virtual {p0}, Leltos/simpledialogfragment/form/Check;->buildViewHolder()Leltos/simpledialogfragment/form/a;

    move-result-object v0

    return-object v0
.end method

.method public check(I)Leltos/simpledialogfragment/form/Check;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param

    .line 2
    iput p1, p0, Leltos/simpledialogfragment/form/Check;->presetId:I

    return-object p0
.end method

.method public check(Z)Leltos/simpledialogfragment/form/Check;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Leltos/simpledialogfragment/form/Check;->preset:Ljava/lang/Boolean;

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getInitialState(Landroid/content/Context;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/form/Check;->preset:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget v0, p0, Leltos/simpledialogfragment/form/Check;->presetId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Leltos/simpledialogfragment/form/Check;->presetId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected getText(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/form/Check;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget v0, p0, Leltos/simpledialogfragment/form/Check;->textResourceId:I

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

.method public label(I)Leltos/simpledialogfragment/form/Check;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 4
    iput p1, p0, Leltos/simpledialogfragment/form/Check;->textResourceId:I

    return-object p0
.end method

.method public label(Ljava/lang/String;)Leltos/simpledialogfragment/form/Check;
    .locals 0

    .line 3
    iput-object p1, p0, Leltos/simpledialogfragment/form/Check;->text:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic label(I)Leltos/simpledialogfragment/form/FormElement;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/form/Check;->label(I)Leltos/simpledialogfragment/form/Check;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic label(Ljava/lang/String;)Leltos/simpledialogfragment/form/FormElement;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/form/Check;->label(Ljava/lang/String;)Leltos/simpledialogfragment/form/Check;

    move-result-object p1

    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Leltos/simpledialogfragment/form/FormElement;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object p2, p0, Leltos/simpledialogfragment/form/Check;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget p2, p0, Leltos/simpledialogfragment/form/Check;->textResourceId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object p2, p0, Leltos/simpledialogfragment/form/Check;->preset:Ljava/lang/Boolean;

    if-nez p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 5
    iget p2, p0, Leltos/simpledialogfragment/form/Check;->presetId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
