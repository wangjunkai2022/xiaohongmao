.class public final Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
.super Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private A:Z

.field private B:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private final H:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;"
        }
    .end annotation
.end field

.field private final I:Landroid/util/SparseBooleanArray;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:I

.field private s:I

.field private t:Z

.field private u:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v:I

.field private w:I

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;-><init>()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->E()V

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->H:Landroid/util/SparseArray;

    .line 5
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->I:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->E()V

    .line 8
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->H:Landroid/util/SparseArray;

    .line 9
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->I:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->e0(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V
    .locals 1

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    .line 12
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->g:I

    .line 13
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->h:I

    .line 14
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoFrameRate:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->i:I

    .line 15
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->j:I

    .line 16
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->minVideoWidth:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->k:I

    .line 17
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->minVideoHeight:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->l:I

    .line 18
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->minVideoFrameRate:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->m:I

    .line 19
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->minVideoBitrate:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->n:I

    .line 20
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->o:Z

    .line 21
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedMimeTypeAdaptiveness:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->p:Z

    .line 22
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoNonSeamlessAdaptiveness:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->q:Z

    .line 23
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->r:I

    .line 24
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->s:I

    .line 25
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportOrientationMayChange:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->t:Z

    .line 26
    iget-object v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->u:Lcom/google/common/collect/ImmutableList;

    .line 27
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxAudioChannelCount:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->v:I

    .line 28
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxAudioBitrate:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->w:I

    .line 29
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedAudioConstraintsIfNecessary:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->x:Z

    .line 30
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedMimeTypeAdaptiveness:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->y:Z

    .line 31
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedSampleRateAdaptiveness:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->z:Z

    .line 32
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedChannelCountAdaptiveness:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->A:Z

    .line 33
    iget-object v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->B:Lcom/google/common/collect/ImmutableList;

    .line 34
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->C:Z

    .line 35
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->forceHighestSupportedBitrate:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->D:Z

    .line 36
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->E:Z

    .line 37
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->tunnelingEnabled:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->F:Z

    .line 38
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMultipleAdaptiveSelections:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->G:Z

    .line 39
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->access$000(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->r(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->H:Landroid/util/SparseArray;

    .line 40
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->access$100(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->I:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;-><init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    return-void
.end method

.method private E()V
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "preferredVideoMimeTypes",
            "preferredAudioMimeTypes"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->g:I

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->h:I

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->i:I

    .line 4
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->j:I

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->o:Z

    const/4 v2, 0x0

    .line 6
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->p:Z

    .line 7
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->q:Z

    .line 8
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->r:I

    .line 9
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->s:I

    .line 10
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->t:Z

    .line 11
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->u:Lcom/google/common/collect/ImmutableList;

    .line 12
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->v:I

    .line 13
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->w:I

    .line 14
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->x:Z

    .line 15
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->y:Z

    .line 16
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->z:Z

    .line 17
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->A:Z

    .line 18
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->B:Lcom/google/common/collect/ImmutableList;

    .line 19
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->C:Z

    .line 20
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->D:Z

    .line 21
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->E:Z

    .line 22
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->F:Z

    .line 23
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->G:Z

    return-void
.end method

.method private static r(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;)",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public A(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->E:Z

    return-object p0
.end method

.method public B(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->o:Z

    return-object p0
.end method

.method public C(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->D:Z

    return-object p0
.end method

.method public D(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->C:Z

    return-object p0
.end method

.method public F(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->w:I

    return-object p0
.end method

.method public G(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->v:I

    return-object p0
.end method

.method public H(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->j:I

    return-object p0
.end method

.method public I(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->i:I

    return-object p0
.end method

.method public J(II)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->g:I

    .line 2
    iput p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->h:I

    return-object p0
.end method

.method public K()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 2

    const/16 v0, 0x4ff

    const/16 v1, 0x2cf

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->J(II)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    move-result-object v0

    return-object v0
.end method

.method public L(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->n:I

    return-object p0
.end method

.method public M(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->m:I

    return-object p0
.end method

.method public N(II)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->k:I

    .line 2
    iput p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->l:I

    return-object p0
.end method

.method public O(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;->c(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;

    return-object p0
.end method

.method public varargs P([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;->d([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;

    return-object p0
.end method

.method public Q(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->R([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v0

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->R([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public varargs R([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 0

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->B:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public S(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;->e(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;

    return-object p0
.end method

.method public T(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;->f(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;

    return-object p0
.end method

.method public U(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;->g(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;

    return-object p0
.end method

.method public varargs V([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;->i([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;

    return-object p0
.end method

.method public W(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;->j(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;

    return-object p0
.end method

.method public X(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->Y([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v0

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->Y([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public varargs Y([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 0

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->u:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public final Z(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->I:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->I:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->I:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic a()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->l()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public a0(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;->k(Z)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;

    return-object p0
.end method

.method public bridge synthetic b(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->y(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    move-result-object p1

    return-object p1
.end method

.method public final b0(ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 2
    .param p3    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->H:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->H:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/google/android/exoplayer2/util/z0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    .line 6
    :cond_1
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic c(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->O(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    move-result-object p1

    return-object p1
.end method

.method public c0(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->F:Z

    return-object p0
.end method

.method public bridge synthetic d([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->P([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    move-result-object p1

    return-object p1
.end method

.method public d0(IIZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->r:I

    .line 2
    iput p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->s:I

    .line 3
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->t:Z

    return-object p0
.end method

.method public bridge synthetic e(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->S(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    move-result-object p1

    return-object p1
.end method

.method public e0(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/z0;->V(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    .line 2
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->d0(IIZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->T(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic g(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->U(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic i([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->V([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic j(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->W(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic k(Z)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->a0(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    move-result-object p1

    return-object p1
.end method

.method public l()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 39

    move-object/from16 v0, p0

    new-instance v37, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-object/from16 v1, v37

    iget v2, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->g:I

    iget v3, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->h:I

    iget v4, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->i:I

    iget v5, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->j:I

    iget v6, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->k:I

    iget v7, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->l:I

    iget v8, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->m:I

    iget v9, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->n:I

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->o:Z

    iget-boolean v11, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->p:Z

    iget-boolean v12, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->q:Z

    iget v13, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->r:I

    iget v14, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->s:I

    iget-boolean v15, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->t:Z

    move-object/from16 v38, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->u:Lcom/google/common/collect/ImmutableList;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;->a:Lcom/google/common/collect/ImmutableList;

    move-object/from16 v17, v1

    iget v1, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;->b:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->v:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->w:I

    move/from16 v20, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->x:Z

    move/from16 v21, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->y:Z

    move/from16 v22, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->z:Z

    move/from16 v23, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->A:Z

    move/from16 v24, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->B:Lcom/google/common/collect/ImmutableList;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;->c:Lcom/google/common/collect/ImmutableList;

    move-object/from16 v26, v1

    iget v1, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;->d:I

    move/from16 v27, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;->e:Z

    move/from16 v28, v1

    iget v1, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;->f:I

    move/from16 v29, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->C:Z

    move/from16 v30, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->D:Z

    move/from16 v31, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->E:Z

    move/from16 v32, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->F:Z

    move/from16 v33, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->G:Z

    move/from16 v34, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->H:Landroid/util/SparseArray;

    move-object/from16 v35, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->I:Landroid/util/SparseBooleanArray;

    move-object/from16 v36, v1

    move-object/from16 v1, v38

    invoke-direct/range {v1 .. v36}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>(IIIIIIIIZZZIIZLcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;IIIZZZZLcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;IZIZZZZZLandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    return-object v37
.end method

.method public final m(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->H:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->H:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final n()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->H:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->H:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-object p0
.end method

.method public final o(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->H:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->H:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public p()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 1

    const v0, 0x7fffffff

    invoke-virtual {p0, v0, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->J(II)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    move-result-object v0

    return-object v0
.end method

.method public q()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 2

    const v0, 0x7fffffff

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->d0(IIZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;

    move-result-object v0

    return-object v0
.end method

.method public s(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->A:Z

    return-object p0
.end method

.method public t(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->y:Z

    return-object p0
.end method

.method public u(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->z:Z

    return-object p0
.end method

.method public v(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->G:Z

    return-object p0
.end method

.method public w(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->p:Z

    return-object p0
.end method

.method public x(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->q:Z

    return-object p0
.end method

.method public y(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;->b(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$b;

    return-object p0
.end method

.method public z(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$d;->x:Z

    return-object p0
.end method
