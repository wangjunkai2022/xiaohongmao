.class public Leltos/simpledialogfragment/form/DateTime;
.super Leltos/simpledialogfragment/form/FormElement;
.source "DateTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leltos/simpledialogfragment/form/DateTime$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leltos/simpledialogfragment/form/FormElement<",
        "Leltos/simpledialogfragment/form/DateTime;",
        "Leltos/simpledialogfragment/form/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Leltos/simpledialogfragment/form/DateTime;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected date:Ljava/lang/Long;

.field protected hour:Ljava/lang/Integer;

.field protected max:Ljava/lang/Long;

.field protected min:Ljava/lang/Long;

.field protected minute:Ljava/lang/Integer;

.field protected type:Leltos/simpledialogfragment/form/DateTime$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Leltos/simpledialogfragment/form/DateTime$a;

    invoke-direct {v0}, Leltos/simpledialogfragment/form/DateTime$a;-><init>()V

    sput-object v0, Leltos/simpledialogfragment/form/DateTime;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .line 3
    invoke-direct {p0, p1}, Leltos/simpledialogfragment/form/FormElement;-><init>(Landroid/os/Parcel;)V

    .line 4
    sget-object v0, Leltos/simpledialogfragment/form/DateTime$Type;->DATE:Leltos/simpledialogfragment/form/DateTime$Type;

    iput-object v0, p0, Leltos/simpledialogfragment/form/DateTime;->type:Leltos/simpledialogfragment/form/DateTime$Type;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leltos/simpledialogfragment/form/DateTime$Type;->valueOf(Ljava/lang/String;)Leltos/simpledialogfragment/form/DateTime$Type;

    move-result-object v0

    iput-object v0, p0, Leltos/simpledialogfragment/form/DateTime;->type:Leltos/simpledialogfragment/form/DateTime$Type;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Leltos/simpledialogfragment/form/DateTime;->date:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    move-object v0, v4

    goto :goto_0

    :cond_0
    iget-object v0, p0, Leltos/simpledialogfragment/form/DateTime;->date:Ljava/lang/Long;

    :goto_0
    iput-object v0, p0, Leltos/simpledialogfragment/form/DateTime;->date:Ljava/lang/Long;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Leltos/simpledialogfragment/form/DateTime;->min:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    move-object v0, v4

    goto :goto_1

    :cond_1
    iget-object v0, p0, Leltos/simpledialogfragment/form/DateTime;->min:Ljava/lang/Long;

    :goto_1
    iput-object v0, p0, Leltos/simpledialogfragment/form/DateTime;->min:Ljava/lang/Long;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Leltos/simpledialogfragment/form/DateTime;->max:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v5, v0, v2

    if-nez v5, :cond_2

    move-object v0, v4

    goto :goto_2

    :cond_2
    iget-object v0, p0, Leltos/simpledialogfragment/form/DateTime;->max:Ljava/lang/Long;

    :goto_2
    iput-object v0, p0, Leltos/simpledialogfragment/form/DateTime;->max:Ljava/lang/Long;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Leltos/simpledialogfragment/form/DateTime;->hour:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    move-object v0, v4

    goto :goto_3

    :cond_3
    iget-object v0, p0, Leltos/simpledialogfragment/form/DateTime;->hour:Ljava/lang/Integer;

    :goto_3
    iput-object v0, p0, Leltos/simpledialogfragment/form/DateTime;->hour:Ljava/lang/Integer;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Leltos/simpledialogfragment/form/DateTime;->minute:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_4

    goto :goto_4

    :cond_4
    iget-object v4, p0, Leltos/simpledialogfragment/form/DateTime;->minute:Ljava/lang/Integer;

    :goto_4
    iput-object v4, p0, Leltos/simpledialogfragment/form/DateTime;->minute:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Leltos/simpledialogfragment/form/FormElement;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object p1, Leltos/simpledialogfragment/form/DateTime$Type;->DATE:Leltos/simpledialogfragment/form/DateTime$Type;

    iput-object p1, p0, Leltos/simpledialogfragment/form/DateTime;->type:Leltos/simpledialogfragment/form/DateTime$Type;

    return-void
.end method

.method public static date(Ljava/lang/String;)Leltos/simpledialogfragment/form/DateTime;
    .locals 1

    .line 1
    invoke-static {p0}, Leltos/simpledialogfragment/form/DateTime;->picker(Ljava/lang/String;)Leltos/simpledialogfragment/form/DateTime;

    move-result-object p0

    sget-object v0, Leltos/simpledialogfragment/form/DateTime$Type;->DATE:Leltos/simpledialogfragment/form/DateTime$Type;

    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/form/DateTime;->type(Leltos/simpledialogfragment/form/DateTime$Type;)Leltos/simpledialogfragment/form/DateTime;

    move-result-object p0

    return-object p0
.end method

.method public static datetime(Ljava/lang/String;)Leltos/simpledialogfragment/form/DateTime;
    .locals 1

    invoke-static {p0}, Leltos/simpledialogfragment/form/DateTime;->picker(Ljava/lang/String;)Leltos/simpledialogfragment/form/DateTime;

    move-result-object p0

    sget-object v0, Leltos/simpledialogfragment/form/DateTime$Type;->DATETIME:Leltos/simpledialogfragment/form/DateTime$Type;

    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/form/DateTime;->type(Leltos/simpledialogfragment/form/DateTime$Type;)Leltos/simpledialogfragment/form/DateTime;

    move-result-object p0

    return-object p0
.end method

.method public static picker(Ljava/lang/String;)Leltos/simpledialogfragment/form/DateTime;
    .locals 1

    new-instance v0, Leltos/simpledialogfragment/form/DateTime;

    invoke-direct {v0, p0}, Leltos/simpledialogfragment/form/DateTime;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static time(Ljava/lang/String;)Leltos/simpledialogfragment/form/DateTime;
    .locals 1

    .line 1
    invoke-static {p0}, Leltos/simpledialogfragment/form/DateTime;->picker(Ljava/lang/String;)Leltos/simpledialogfragment/form/DateTime;

    move-result-object p0

    sget-object v0, Leltos/simpledialogfragment/form/DateTime$Type;->TIME:Leltos/simpledialogfragment/form/DateTime$Type;

    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/form/DateTime;->type(Leltos/simpledialogfragment/form/DateTime$Type;)Leltos/simpledialogfragment/form/DateTime;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public buildViewHolder()Leltos/simpledialogfragment/form/c;
    .locals 1

    .line 2
    new-instance v0, Leltos/simpledialogfragment/form/c;

    invoke-direct {v0, p0}, Leltos/simpledialogfragment/form/c;-><init>(Leltos/simpledialogfragment/form/DateTime;)V

    return-object v0
.end method

.method public bridge synthetic buildViewHolder()Leltos/simpledialogfragment/form/d;
    .locals 1

    .line 1
    invoke-virtual {p0}, Leltos/simpledialogfragment/form/DateTime;->buildViewHolder()Leltos/simpledialogfragment/form/c;

    move-result-object v0

    return-object v0
.end method

.method public date(Ljava/util/Date;)Leltos/simpledialogfragment/form/DateTime;
    .locals 2

    .line 2
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Leltos/simpledialogfragment/form/DateTime;->date:Ljava/lang/Long;

    .line 3
    invoke-virtual {p1}, Ljava/util/Date;->getHours()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Leltos/simpledialogfragment/form/DateTime;->hour:Ljava/lang/Integer;

    .line 4
    invoke-virtual {p1}, Ljava/util/Date;->getMinutes()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Leltos/simpledialogfragment/form/DateTime;->minute:Ljava/lang/Integer;

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public max(Ljava/util/Date;)Leltos/simpledialogfragment/form/DateTime;
    .locals 2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Leltos/simpledialogfragment/form/DateTime;->max:Ljava/lang/Long;

    return-object p0
.end method

.method public min(Ljava/util/Date;)Leltos/simpledialogfragment/form/DateTime;
    .locals 2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Leltos/simpledialogfragment/form/DateTime;->min:Ljava/lang/Long;

    return-object p0
.end method

.method public time(II)Leltos/simpledialogfragment/form/DateTime;
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Leltos/simpledialogfragment/form/DateTime;->hour:Ljava/lang/Integer;

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Leltos/simpledialogfragment/form/DateTime;->minute:Ljava/lang/Integer;

    return-object p0
.end method

.method public type(Leltos/simpledialogfragment/form/DateTime$Type;)Leltos/simpledialogfragment/form/DateTime;
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/form/DateTime;->type:Leltos/simpledialogfragment/form/DateTime$Type;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Leltos/simpledialogfragment/form/FormElement;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object p2, p0, Leltos/simpledialogfragment/form/DateTime;->type:Leltos/simpledialogfragment/form/DateTime$Type;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Leltos/simpledialogfragment/form/DateTime;->date:Ljava/lang/Long;

    const-wide/16 v0, 0x0

    if-nez p2, :cond_0

    move-wide v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    iget-object p2, p0, Leltos/simpledialogfragment/form/DateTime;->min:Ljava/lang/Long;

    if-nez p2, :cond_1

    move-wide v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_1
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5
    iget-object p2, p0, Leltos/simpledialogfragment/form/DateTime;->max:Ljava/lang/Long;

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 6
    iget-object p2, p0, Leltos/simpledialogfragment/form/DateTime;->hour:Ljava/lang/Integer;

    const/4 v0, -0x1

    if-nez p2, :cond_3

    const/4 p2, -0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object p2, p0, Leltos/simpledialogfragment/form/DateTime;->minute:Ljava/lang/Integer;

    if-nez p2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
