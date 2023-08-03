.class public Leltos/simpledialogfragment/list/SimpleListItem;
.super Ljava/lang/Object;
.source "SimpleListItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Leltos/simpledialogfragment/list/SimpleListItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:J

.field private string:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Leltos/simpledialogfragment/list/SimpleListItem$a;

    invoke-direct {v0}, Leltos/simpledialogfragment/list/SimpleListItem$a;-><init>()V

    sput-object v0, Leltos/simpledialogfragment/list/SimpleListItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Leltos/simpledialogfragment/list/SimpleListItem;->string:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Leltos/simpledialogfragment/list/SimpleListItem$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Leltos/simpledialogfragment/list/SimpleListItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    invoke-direct {p0, p1, v0, v1}, Leltos/simpledialogfragment/list/SimpleListItem;-><init>(Ljava/lang/String;J)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Leltos/simpledialogfragment/list/SimpleListItem;->string:Ljava/lang/String;

    .line 5
    iput-wide p2, p0, Leltos/simpledialogfragment/list/SimpleListItem;->id:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Leltos/simpledialogfragment/list/SimpleListItem;->id:J

    return-wide v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leltos/simpledialogfragment/list/SimpleListItem;->string:Ljava/lang/String;

    return-object v0
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Leltos/simpledialogfragment/list/SimpleListItem;->id:J

    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/list/SimpleListItem;->string:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Leltos/simpledialogfragment/list/SimpleListItem;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Leltos/simpledialogfragment/list/SimpleListItem;->string:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
