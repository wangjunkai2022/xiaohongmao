.class public final Lcom/google/android/gms/common/internal/zax;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-base@@18.0.1"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$a;
    creator = "SignInButtonConfigCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/internal/zax;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zaa:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$g;
        id = 0x1
    .end annotation
.end field

.field private final zab:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$c;
        getter = "getButtonSize"
        id = 0x2
    .end annotation
.end field

.field private final zac:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$c;
        getter = "getColorScheme"
        id = 0x3
    .end annotation
.end field

.field private final zad:[Lcom/google/android/gms/common/api/Scope;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$c;
        getter = "getScopes"
        id = 0x4
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/c1;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/c1;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zax;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(III[Lcom/google/android/gms/common/api/Scope;)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$e;
            id = 0x2
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$e;
            id = 0x3
        .end annotation
    .end param
    .param p4    # [Lcom/google/android/gms/common/api/Scope;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$e;
            id = 0x4
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$b;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/zax;->zaa:I

    iput p2, p0, Lcom/google/android/gms/common/internal/zax;->zab:I

    iput p3, p0, Lcom/google/android/gms/common/internal/zax;->zac:I

    iput-object p4, p0, Lcom/google/android/gms/common/internal/zax;->zad:[Lcom/google/android/gms/common/api/Scope;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lw2/a;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/common/internal/zax;->zaa:I

    const/4 v2, 0x1

    .line 2
    invoke-static {p1, v2, v1}, Lw2/a;->F(Landroid/os/Parcel;II)V

    iget v1, p0, Lcom/google/android/gms/common/internal/zax;->zab:I

    const/4 v2, 0x2

    .line 3
    invoke-static {p1, v2, v1}, Lw2/a;->F(Landroid/os/Parcel;II)V

    iget v1, p0, Lcom/google/android/gms/common/internal/zax;->zac:I

    const/4 v2, 0x3

    .line 4
    invoke-static {p1, v2, v1}, Lw2/a;->F(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zax;->zad:[Lcom/google/android/gms/common/api/Scope;

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 5
    invoke-static {p1, v2, v1, p2, v3}, Lw2/a;->c0(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    .line 6
    invoke-static {p1, v0}, Lw2/a;->b(Landroid/os/Parcel;I)V

    return-void
.end method
