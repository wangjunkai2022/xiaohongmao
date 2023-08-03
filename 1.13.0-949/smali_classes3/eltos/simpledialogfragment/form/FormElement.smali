.class public abstract Leltos/simpledialogfragment/form/FormElement;
.super Ljava/lang/Object;
.source "FormElement.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Leltos/simpledialogfragment/form/FormElement;",
        "V:",
        "Leltos/simpledialogfragment/form/d;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field protected static final NO_ID:I = -0x1


# instance fields
.field protected required:Z

.field protected resultKey:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private textResourceId:I


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Leltos/simpledialogfragment/form/FormElement;->required:Z

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Leltos/simpledialogfragment/form/FormElement;->text:Ljava/lang/String;

    const/4 v1, -0x1

    .line 9
    iput v1, p0, Leltos/simpledialogfragment/form/FormElement;->textResourceId:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Leltos/simpledialogfragment/form/FormElement;->resultKey:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Leltos/simpledialogfragment/form/FormElement;->required:Z

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leltos/simpledialogfragment/form/FormElement;->text:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Leltos/simpledialogfragment/form/FormElement;->textResourceId:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Leltos/simpledialogfragment/form/FormElement;->required:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Leltos/simpledialogfragment/form/FormElement;->text:Ljava/lang/String;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Leltos/simpledialogfragment/form/FormElement;->textResourceId:I

    .line 5
    iput-object p1, p0, Leltos/simpledialogfragment/form/FormElement;->resultKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract buildViewHolder()Leltos/simpledialogfragment/form/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getText(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/form/FormElement;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget v0, p0, Leltos/simpledialogfragment/form/FormElement;->textResourceId:I

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

.method public label(I)Leltos/simpledialogfragment/form/FormElement;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 2
    iput p1, p0, Leltos/simpledialogfragment/form/FormElement;->textResourceId:I

    return-object p0
.end method

.method public label(Ljava/lang/String;)Leltos/simpledialogfragment/form/FormElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Leltos/simpledialogfragment/form/FormElement;->text:Ljava/lang/String;

    return-object p0
.end method

.method public required()Leltos/simpledialogfragment/form/FormElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/form/FormElement;->required(Z)Leltos/simpledialogfragment/form/FormElement;

    move-result-object v0

    return-object v0
.end method

.method public required(Z)Leltos/simpledialogfragment/form/FormElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 2
    iput-boolean p1, p0, Leltos/simpledialogfragment/form/FormElement;->required:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Leltos/simpledialogfragment/form/FormElement;->resultKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-boolean p2, p0, Leltos/simpledialogfragment/form/FormElement;->required:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 3
    iget-object p2, p0, Leltos/simpledialogfragment/form/FormElement;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget p2, p0, Leltos/simpledialogfragment/form/FormElement;->textResourceId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
