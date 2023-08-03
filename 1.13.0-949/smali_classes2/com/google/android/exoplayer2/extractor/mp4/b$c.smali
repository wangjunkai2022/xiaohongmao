.class final Lcom/google/android/exoplayer2/extractor/mp4/b$c;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field public static final e:I = 0x8


# instance fields
.field public final a:[Lcom/google/android/exoplayer2/extractor/mp4/p;

.field public b:Lcom/google/android/exoplayer2/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [Lcom/google/android/exoplayer2/extractor/mp4/p;

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/b$c;->a:[Lcom/google/android/exoplayer2/extractor/mp4/p;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/b$c;->d:I

    return-void
.end method
