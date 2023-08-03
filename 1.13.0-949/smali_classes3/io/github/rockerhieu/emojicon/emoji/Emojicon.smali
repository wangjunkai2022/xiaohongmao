.class public Lio/github/rockerhieu/emojicon/emoji/Emojicon;
.super Ljava/lang/Object;
.source "Emojicon.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/rockerhieu/emojicon/emoji/Emojicon$c;,
        Lio/github/rockerhieu/emojicon/emoji/Emojicon$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/github/rockerhieu/emojicon/emoji/Emojicon;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_NATURE:I = 0x2

.field public static final TYPE_OBJECTS:I = 0x3

.field public static final TYPE_PEOPLE:I = 0x1

.field public static final TYPE_PLACES:I = 0x4

.field public static final TYPE_SYMBOLS:I = 0x5

.field public static final TYPE_UNDEFINED:I


# instance fields
.field private emoji:Ljava/lang/String;

.field private icon:I

.field private value:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/github/rockerhieu/emojicon/emoji/Emojicon$a;

    invoke-direct {v0}, Lio/github/rockerhieu/emojicon/emoji/Emojicon$a;-><init>()V

    sput-object v0, Lio/github/rockerhieu/emojicon/emoji/Emojicon;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ICLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lio/github/rockerhieu/emojicon/emoji/Emojicon;->icon:I

    .line 3
    iput-char p2, p0, Lio/github/rockerhieu/emojicon/emoji/Emojicon;->value:C

    .line 4
    iput-object p3, p0, Lio/github/rockerhieu/emojicon/emoji/Emojicon;->emoji:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lio/github/rockerhieu/emojicon/emoji/Emojicon;->icon:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lio/github/rockerhieu/emojicon/emoji/Emojicon;->value:C

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/github/rockerhieu/emojicon/emoji/Emojicon;->emoji:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lio/github/rockerhieu/emojicon/emoji/Emojicon;->emoji:Ljava/lang/String;

    return-void
.end method

.method public static fromChar(C)Lio/github/rockerhieu/emojicon/emoji/Emojicon;
    .locals 1

    .line 1
    new-instance v0, Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    invoke-direct {v0}, Lio/github/rockerhieu/emojicon/emoji/Emojicon;-><init>()V

    .line 2
    invoke-static {p0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lio/github/rockerhieu/emojicon/emoji/Emojicon;->emoji:Ljava/lang/String;

    return-object v0
.end method

.method public static fromChars(Ljava/lang/String;)Lio/github/rockerhieu/emojicon/emoji/Emojicon;
    .locals 1

    .line 1
    new-instance v0, Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    invoke-direct {v0}, Lio/github/rockerhieu/emojicon/emoji/Emojicon;-><init>()V

    .line 2
    iput-object p0, v0, Lio/github/rockerhieu/emojicon/emoji/Emojicon;->emoji:Ljava/lang/String;

    return-object v0
.end method

.method public static fromCodePoint(I)Lio/github/rockerhieu/emojicon/emoji/Emojicon;
    .locals 1

    .line 1
    new-instance v0, Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    invoke-direct {v0}, Lio/github/rockerhieu/emojicon/emoji/Emojicon;-><init>()V

    .line 2
    invoke-static {p0}, Lio/github/rockerhieu/emojicon/emoji/Emojicon;->newString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lio/github/rockerhieu/emojicon/emoji/Emojicon;->emoji:Ljava/lang/String;

    return-object v0
.end method

.method public static fromResource(II)Lio/github/rockerhieu/emojicon/emoji/Emojicon;
    .locals 1

    .line 1
    new-instance v0, Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    invoke-direct {v0}, Lio/github/rockerhieu/emojicon/emoji/Emojicon;-><init>()V

    .line 2
    iput p0, v0, Lio/github/rockerhieu/emojicon/emoji/Emojicon;->icon:I

    int-to-char p0, p1

    .line 3
    iput-char p0, v0, Lio/github/rockerhieu/emojicon/emoji/Emojicon;->value:C

    return-object v0
.end method

.method public static getEmojicons(I)[Lio/github/rockerhieu/emojicon/emoji/Emojicon;
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 1
    sget-object p0, Lio/github/rockerhieu/emojicon/emoji/e;->a:[Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid emojicon type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    sget-object p0, Lio/github/rockerhieu/emojicon/emoji/d;->a:[Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lio/github/rockerhieu/emojicon/emoji/b;->a:[Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, Lio/github/rockerhieu/emojicon/emoji/a;->a:[Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    return-object p0

    .line 6
    :cond_4
    sget-object p0, Lio/github/rockerhieu/emojicon/emoji/c;->a:[Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    return-object p0
.end method

.method public static final newString(I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/rockerhieu/emojicon/emoji/Emojicon;->emoji:Ljava/lang/String;

    check-cast p1, Lio/github/rockerhieu/emojicon/emoji/Emojicon;

    iget-object p1, p1, Lio/github/rockerhieu/emojicon/emoji/Emojicon;->emoji:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getEmoji()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/github/rockerhieu/emojicon/emoji/Emojicon;->emoji:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    iget v0, p0, Lio/github/rockerhieu/emojicon/emoji/Emojicon;->icon:I

    return v0
.end method

.method public getValue()C
    .locals 1

    iget-char v0, p0, Lio/github/rockerhieu/emojicon/emoji/Emojicon;->value:C

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lio/github/rockerhieu/emojicon/emoji/Emojicon;->emoji:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lio/github/rockerhieu/emojicon/emoji/Emojicon;->icon:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-char p2, p0, Lio/github/rockerhieu/emojicon/emoji/Emojicon;->value:C

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Lio/github/rockerhieu/emojicon/emoji/Emojicon;->emoji:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
