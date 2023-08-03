.class public Lcom/google/android/exoplayer2/trackselection/a$b;
.super Ljava/lang/Object;
.source "AdaptiveTrackSelection.java"

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:F

.field private final e:F

.field private final f:Lcom/google/android/exoplayer2/util/d;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    sget-object v6, Lcom/google/android/exoplayer2/util/d;->a:Lcom/google/android/exoplayer2/util/d;

    const/16 v1, 0x2710

    const/16 v2, 0x61a8

    const/16 v3, 0x61a8

    const v4, 0x3f333333    # 0.7f

    const/high16 v5, 0x3f400000    # 0.75f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/trackselection/a$b;-><init>(IIIFFLcom/google/android/exoplayer2/util/d;)V

    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 7

    .line 2
    sget-object v6, Lcom/google/android/exoplayer2/util/d;->a:Lcom/google/android/exoplayer2/util/d;

    const/high16 v5, 0x3f400000    # 0.75f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/trackselection/a$b;-><init>(IIIFFLcom/google/android/exoplayer2/util/d;)V

    return-void
.end method

.method public constructor <init>(IIIFFLcom/google/android/exoplayer2/util/d;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/a$b;->a:I

    .line 5
    iput p2, p0, Lcom/google/android/exoplayer2/trackselection/a$b;->b:I

    .line 6
    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/a$b;->c:I

    .line 7
    iput p4, p0, Lcom/google/android/exoplayer2/trackselection/a$b;->d:F

    .line 8
    iput p5, p0, Lcom/google/android/exoplayer2/trackselection/a$b;->e:F

    .line 9
    iput-object p6, p0, Lcom/google/android/exoplayer2/trackselection/a$b;->f:Lcom/google/android/exoplayer2/util/d;

    return-void
.end method


# virtual methods
.method public final a([Lcom/google/android/exoplayer2/trackselection/g$a;Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/s2;)[Lcom/google/android/exoplayer2/trackselection/g;
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/a;->x([Lcom/google/android/exoplayer2/trackselection/g$a;)Lcom/google/common/collect/ImmutableList;

    move-result-object p3

    .line 2
    array-length p4, p1

    new-array p4, p4, [Lcom/google/android/exoplayer2/trackselection/g;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 4
    aget-object v2, p1, v1

    if-eqz v2, :cond_2

    .line 5
    iget-object v5, v2, Lcom/google/android/exoplayer2/trackselection/g$a;->b:[I

    array-length v3, v5

    if-nez v3, :cond_0

    goto :goto_2

    .line 6
    :cond_0
    array-length v3, v5

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 7
    new-instance v3, Lcom/google/android/exoplayer2/trackselection/h;

    iget-object v4, v2, Lcom/google/android/exoplayer2/trackselection/g$a;->a:Lcom/google/android/exoplayer2/source/TrackGroup;

    aget v5, v5, v0

    iget v2, v2, Lcom/google/android/exoplayer2/trackselection/g$a;->c:I

    invoke-direct {v3, v4, v5, v2}, Lcom/google/android/exoplayer2/trackselection/h;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;II)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object v4, v2, Lcom/google/android/exoplayer2/trackselection/g$a;->a:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget v6, v2, Lcom/google/android/exoplayer2/trackselection/g$a;->c:I

    .line 9
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/google/common/collect/ImmutableList;

    move-object v3, p0

    move-object v7, p2

    .line 10
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/trackselection/a$b;->b(Lcom/google/android/exoplayer2/source/TrackGroup;[IILcom/google/android/exoplayer2/upstream/e;Lcom/google/common/collect/ImmutableList;)Lcom/google/android/exoplayer2/trackselection/a;

    move-result-object v3

    :goto_1
    aput-object v3, p4, v1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p4
.end method

.method protected b(Lcom/google/android/exoplayer2/source/TrackGroup;[IILcom/google/android/exoplayer2/upstream/e;Lcom/google/common/collect/ImmutableList;)Lcom/google/android/exoplayer2/trackselection/a;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "[II",
            "Lcom/google/android/exoplayer2/upstream/e;",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/trackselection/a$a;",
            ">;)",
            "Lcom/google/android/exoplayer2/trackselection/a;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v16, Lcom/google/android/exoplayer2/trackselection/a;

    iget v1, v0, Lcom/google/android/exoplayer2/trackselection/a$b;->a:I

    int-to-long v6, v1

    iget v1, v0, Lcom/google/android/exoplayer2/trackselection/a$b;->b:I

    int-to-long v8, v1

    iget v1, v0, Lcom/google/android/exoplayer2/trackselection/a$b;->c:I

    int-to-long v10, v1

    iget v12, v0, Lcom/google/android/exoplayer2/trackselection/a$b;->d:F

    iget v13, v0, Lcom/google/android/exoplayer2/trackselection/a$b;->e:F

    iget-object v15, v0, Lcom/google/android/exoplayer2/trackselection/a$b;->f:Lcom/google/android/exoplayer2/util/d;

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v14, p5

    invoke-direct/range {v1 .. v15}, Lcom/google/android/exoplayer2/trackselection/a;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[IILcom/google/android/exoplayer2/upstream/e;JJJFFLjava/util/List;Lcom/google/android/exoplayer2/util/d;)V

    return-object v16
.end method
