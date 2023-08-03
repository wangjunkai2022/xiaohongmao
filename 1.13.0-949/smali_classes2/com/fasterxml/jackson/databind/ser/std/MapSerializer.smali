.class public Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
.super Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
.source "MapSerializer.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/ser/e;


# annotations
.annotation runtime Lc2/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer<",
        "Ljava/util/Map<",
        "**>;>;",
        "Lcom/fasterxml/jackson/databind/ser/e;"
    }
.end annotation


# static fields
.field public static final MARKER_FOR_EMPTY:Ljava/lang/Object;

.field private static final s:J = 0x1L

.field protected static final t:Lcom/fasterxml/jackson/databind/JavaType;


# instance fields
.field protected final d:Lcom/fasterxml/jackson/databind/BeanProperty;

.field protected final e:Z

.field protected final f:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final g:Lcom/fasterxml/jackson/databind/JavaType;

.field protected h:Lcom/fasterxml/jackson/databind/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Lcom/fasterxml/jackson/databind/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final j:Lcom/fasterxml/jackson/databind/jsontype/f;

.field protected k:Lcom/fasterxml/jackson/databind/ser/impl/c;

.field protected final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final n:Ljava/lang/Object;

.field protected final o:Ljava/lang/Object;

.field protected final p:Z

.field protected final q:Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;

.field protected final r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->t:Lcom/fasterxml/jackson/databind/JavaType;

    .line 2
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/g;Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 34
    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/g;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/g;Ljava/util/Set;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 18
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;-><init>(Ljava/lang/Class;Z)V

    if-eqz p5, :cond_0

    .line 19
    invoke-interface {p5}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p5, 0x0

    :cond_1
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->l:Ljava/util/Set;

    .line 20
    iput-object p6, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->m:Ljava/util/Set;

    .line 21
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->f:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->f:Lcom/fasterxml/jackson/databind/JavaType;

    .line 22
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->g:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->g:Lcom/fasterxml/jackson/databind/JavaType;

    .line 23
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->e:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->e:Z

    .line 24
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->j:Lcom/fasterxml/jackson/databind/jsontype/f;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->j:Lcom/fasterxml/jackson/databind/jsontype/f;

    .line 25
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->h:Lcom/fasterxml/jackson/databind/g;

    .line 26
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->i:Lcom/fasterxml/jackson/databind/g;

    .line 27
    invoke-static {}, Lcom/fasterxml/jackson/databind/ser/impl/c;->c()Lcom/fasterxml/jackson/databind/ser/impl/c;

    move-result-object p3

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->k:Lcom/fasterxml/jackson/databind/ser/impl/c;

    .line 28
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->d:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 29
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->n:Ljava/lang/Object;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->n:Ljava/lang/Object;

    .line 30
    iget-boolean p2, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->r:Z

    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->r:Z

    .line 31
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->o:Ljava/lang/Object;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->o:Ljava/lang/Object;

    .line 32
    iget-boolean p1, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->p:Z

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->p:Z

    .line 33
    invoke-static {p5, p6}, Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil;->a(Ljava/util/Set;Ljava/util/Set;)Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->q:Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;Lcom/fasterxml/jackson/databind/jsontype/f;Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;Lcom/fasterxml/jackson/databind/jsontype/f;Ljava/lang/Object;Z)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;Lcom/fasterxml/jackson/databind/jsontype/f;Ljava/lang/Object;Z)V
    .locals 2

    .line 35
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;-><init>(Ljava/lang/Class;Z)V

    .line 36
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->l:Ljava/util/Set;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->l:Ljava/util/Set;

    .line 37
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->m:Ljava/util/Set;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->m:Ljava/util/Set;

    .line 38
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->f:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->f:Lcom/fasterxml/jackson/databind/JavaType;

    .line 39
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->g:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->g:Lcom/fasterxml/jackson/databind/JavaType;

    .line 40
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->e:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->e:Z

    .line 41
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->j:Lcom/fasterxml/jackson/databind/jsontype/f;

    .line 42
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->h:Lcom/fasterxml/jackson/databind/g;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->h:Lcom/fasterxml/jackson/databind/g;

    .line 43
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->i:Lcom/fasterxml/jackson/databind/g;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->i:Lcom/fasterxml/jackson/databind/g;

    .line 44
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->k:Lcom/fasterxml/jackson/databind/ser/impl/c;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->k:Lcom/fasterxml/jackson/databind/ser/impl/c;

    .line 45
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->d:Lcom/fasterxml/jackson/databind/BeanProperty;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->d:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 46
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->n:Ljava/lang/Object;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->n:Ljava/lang/Object;

    .line 47
    iget-boolean p2, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->r:Z

    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->r:Z

    .line 48
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->o:Ljava/lang/Object;

    .line 49
    iput-boolean p4, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->p:Z

    .line 50
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->q:Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->q:Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;Ljava/lang/Object;Z)V
    .locals 2

    .line 51
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;-><init>(Ljava/lang/Class;Z)V

    .line 52
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->l:Ljava/util/Set;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->l:Ljava/util/Set;

    .line 53
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->m:Ljava/util/Set;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->m:Ljava/util/Set;

    .line 54
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->f:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->f:Lcom/fasterxml/jackson/databind/JavaType;

    .line 55
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->g:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->g:Lcom/fasterxml/jackson/databind/JavaType;

    .line 56
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->e:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->e:Z

    .line 57
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->j:Lcom/fasterxml/jackson/databind/jsontype/f;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->j:Lcom/fasterxml/jackson/databind/jsontype/f;

    .line 58
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->h:Lcom/fasterxml/jackson/databind/g;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->h:Lcom/fasterxml/jackson/databind/g;

    .line 59
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->i:Lcom/fasterxml/jackson/databind/g;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->i:Lcom/fasterxml/jackson/databind/g;

    .line 60
    invoke-static {}, Lcom/fasterxml/jackson/databind/ser/impl/c;->c()Lcom/fasterxml/jackson/databind/ser/impl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->k:Lcom/fasterxml/jackson/databind/ser/impl/c;

    .line 61
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->d:Lcom/fasterxml/jackson/databind/BeanProperty;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->d:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 62
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->n:Ljava/lang/Object;

    .line 63
    iput-boolean p3, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->r:Z

    .line 64
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->o:Ljava/lang/Object;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->o:Ljava/lang/Object;

    .line 65
    iget-boolean p2, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->p:Z

    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->p:Z

    .line 66
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->q:Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->q:Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;

    return-void
.end method

.method protected constructor <init>(Ljava/util/Set;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/g;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Lcom/fasterxml/jackson/databind/jsontype/f;",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 17
    invoke-direct/range {v0 .. v8}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;-><init>(Ljava/util/Set;Ljava/util/Set;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/g;)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Set;Ljava/util/Set;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Lcom/fasterxml/jackson/databind/jsontype/f;",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;-><init>(Ljava/lang/Class;Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object p1, v0

    :cond_1
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->l:Ljava/util/Set;

    .line 3
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->m:Ljava/util/Set;

    .line 4
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->f:Lcom/fasterxml/jackson/databind/JavaType;

    .line 5
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->g:Lcom/fasterxml/jackson/databind/JavaType;

    .line 6
    iput-boolean p5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->e:Z

    .line 7
    iput-object p6, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->j:Lcom/fasterxml/jackson/databind/jsontype/f;

    .line 8
    iput-object p7, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->h:Lcom/fasterxml/jackson/databind/g;

    .line 9
    iput-object p8, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->i:Lcom/fasterxml/jackson/databind/g;

    .line 10
    invoke-static {}, Lcom/fasterxml/jackson/databind/ser/impl/c;->c()Lcom/fasterxml/jackson/databind/ser/impl/c;

    move-result-object p3

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->k:Lcom/fasterxml/jackson/databind/ser/impl/c;

    .line 11
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->d:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 12
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->n:Ljava/lang/Object;

    .line 13
    iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->r:Z

    .line 14
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->o:Ljava/lang/Object;

    .line 15
    iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->p:Z

    .line 16
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil;->a(Ljava/util/Set;Ljava/util/Set;)Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->q:Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;

    return-void
.end method

.method private final A(Lcom/fasterxml/jackson/databind/l;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/l;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->k:Lcom/fasterxml/jackson/databind/ser/impl/c;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/ser/impl/c;->m(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->g:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->hasGenericTypes()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->k:Lcom/fasterxml/jackson/databind/ser/impl/c;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->g:Lcom/fasterxml/jackson/databind/JavaType;

    .line 5
    invoke-virtual {p1, v1, p2}, Lcom/fasterxml/jackson/databind/l;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p2

    .line 6
    invoke-virtual {p0, v0, p2, p1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->y(Lcom/fasterxml/jackson/databind/ser/impl/c;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/l;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->k:Lcom/fasterxml/jackson/databind/ser/impl/c;

    invoke-virtual {p0, v0, p2, p1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->z(Lcom/fasterxml/jackson/databind/ser/impl/c;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/l;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p1

    return-object p1
.end method

.method public static construct(Ljava/util/Set;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/g;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Lcom/fasterxml/jackson/databind/jsontype/f;",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;"
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 10
    invoke-static/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->construct(Ljava/util/Set;Ljava/util/Set;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/g;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static construct(Ljava/util/Set;Ljava/util/Set;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/g;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Lcom/fasterxml/jackson/databind/jsontype/f;",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;"
        }
    .end annotation

    move-object v0, p2

    move-object/from16 v1, p7

    if-nez v0, :cond_0

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->t:Lcom/fasterxml/jackson/databind/JavaType;

    move-object v6, v0

    move-object v7, v6

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 3
    const-class v3, Ljava/util/Properties;

    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    :goto_0
    move-object v7, v0

    move-object v6, v2

    :goto_1
    const/4 v0, 0x0

    if-nez p3, :cond_3

    if-eqz v7, :cond_2

    .line 6
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->isFinal()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    move v8, v0

    goto :goto_2

    .line 7
    :cond_3
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    if-ne v2, v3, :cond_4

    const/4 v8, 0x0

    goto :goto_2

    :cond_4
    move v8, p3

    .line 8
    :goto_2
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v3 .. v11}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;-><init>(Ljava/util/Set;Ljava/util/Set;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/g;)V

    if-eqz v1, :cond_5

    .line 9
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->withFilterId(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object v0

    :cond_5
    return-object v0
.end method

.method public static construct([Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/g;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Lcom/fasterxml/jackson/databind/jsontype/f;",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/b;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 12
    invoke-static/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->construct(Ljava/util/Set;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/g;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected B(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)Z"
        }
    .end annotation

    instance-of v0, p1, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected C(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/l;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->B(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p2, p3, v1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->D(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0

    .line 8
    :cond_3
    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    return-object p2
.end method

.method protected D(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->f:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->d:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/databind/l;->findNullKeySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    if-nez p3, :cond_1

    .line 2
    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->p:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/l;->getDefaultNullValueSerializer()Lcom/fasterxml/jackson/databind/g;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->i:Lcom/fasterxml/jackson/databind/g;

    if-nez v1, :cond_2

    .line 5
    invoke-direct {p0, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->A(Lcom/fasterxml/jackson/databind/l;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v1

    .line 6
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->o:Ljava/lang/Object;

    sget-object v3, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    if-ne v2, v3, :cond_3

    .line 7
    invoke-virtual {v1, p2, p3}, Lcom/fasterxml/jackson/databind/g;->isEmpty(Lcom/fasterxml/jackson/databind/l;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_3
    if-eqz v2, :cond_4

    .line 8
    invoke-virtual {v2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    :goto_0
    const/4 v2, 0x0

    .line 9
    :try_start_0
    invoke-virtual {v0, v2, p1, p2}, Lcom/fasterxml/jackson/databind/g;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V

    .line 10
    invoke-virtual {v1, p3, p1, p2}, Lcom/fasterxml/jackson/databind/g;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 11
    invoke-virtual {p0, p2, p1, p3, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->wrapAndThrow(Lcom/fasterxml/jackson/databind/l;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic _withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/f;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->_withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/f;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object p1

    return-object p1
.end method

.method public _withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/f;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->j:Lcom/fasterxml/jackson/databind/jsontype/f;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    const-string v0, "_withValueTypeSerializer"

    .line 3
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->x(Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->o:Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->p:Z

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;Lcom/fasterxml/jackson/databind/jsontype/f;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/f;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/f;->g(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/h;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->h:Lcom/fasterxml/jackson/databind/g;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->f:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-interface {p2, v0, v1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/h;->h(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/d;Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->i:Lcom/fasterxml/jackson/databind/g;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->k:Lcom/fasterxml/jackson/databind/ser/impl/c;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->g:Lcom/fasterxml/jackson/databind/JavaType;

    .line 5
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/e;->a()Lcom/fasterxml/jackson/databind/l;

    move-result-object p1

    .line 6
    invoke-virtual {p0, v0, v1, p1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->y(Lcom/fasterxml/jackson/databind/ser/impl/c;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/l;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->g:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-interface {p2, v0, p1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/h;->f(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/d;Lcom/fasterxml/jackson/databind/JavaType;)V

    :cond_1
    return-void
.end method

.method public createContextual(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/l;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/l;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v2

    .line 3
    :goto_0
    invoke-static {v2, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findKeySerializer(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {p1, v2, v3}, Lcom/fasterxml/jackson/databind/l;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 6
    :goto_1
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findContentSerializer(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 7
    invoke-virtual {p1, v2, v4}, Lcom/fasterxml/jackson/databind/l;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v1

    goto :goto_2

    :cond_3
    move-object v3, v1

    move-object v4, v3

    :goto_2
    if-nez v4, :cond_4

    .line 8
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->i:Lcom/fasterxml/jackson/databind/g;

    .line 9
    :cond_4
    invoke-virtual {p0, p1, p2, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->h(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v4

    if-nez v4, :cond_5

    .line 10
    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->e:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->g:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JavaType;->isJavaLangObject()Z

    move-result v5

    if-nez v5, :cond_5

    .line 11
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->g:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p1, v4, p2}, Lcom/fasterxml/jackson/databind/l;->findContentValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v4

    :cond_5
    move-object v8, v4

    if-nez v3, :cond_6

    .line 12
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->h:Lcom/fasterxml/jackson/databind/g;

    :cond_6
    if-nez v3, :cond_7

    .line 13
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->f:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p1, v3, p2}, Lcom/fasterxml/jackson/databind/l;->findKeySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v3

    goto :goto_3

    .line 14
    :cond_7
    invoke-virtual {p1, v3, p2}, Lcom/fasterxml/jackson/databind/l;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v3

    :goto_3
    move-object v7, v3

    .line 15
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->l:Ljava/util/Set;

    .line 16
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->m:Ljava/util/Set;

    .line 17
    invoke-static {v2, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v12, 0x0

    if-eqz v5, :cond_c

    .line 18
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/l;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v5

    .line 19
    invoke-virtual {v0, v5, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyIgnoralByName(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->findIgnoredForSerialization()Ljava/util/Set;

    move-result-object v6

    .line 20
    invoke-static {v6}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->b(Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_9

    if-nez v3, :cond_8

    .line 21
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    goto :goto_4

    :cond_8
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v3, v9

    .line 22
    :goto_4
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 23
    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 24
    :cond_9
    invoke-virtual {v0, v5, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyInclusionByName(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->getIncluded()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_b

    if-nez v4, :cond_a

    .line 25
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    goto :goto_6

    :cond_a
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v4, v6

    .line 26
    :goto_6
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 27
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 28
    :cond_b
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationSortAlphabetically(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/Boolean;

    move-result-object v5

    .line 29
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    move-object v9, v3

    move-object v10, v4

    goto :goto_8

    :cond_c
    move-object v9, v3

    move-object v10, v4

    const/4 v5, 0x0

    .line 30
    :goto_8
    const-class v3, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->k(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 31
    sget-object v4, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->WRITE_SORTED_MAP_ENTRIES:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getFeature(Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 32
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move v11, v3

    goto :goto_9

    :cond_d
    move v11, v5

    :goto_9
    move-object v5, p0

    move-object v6, p2

    .line 33
    invoke-virtual/range {v5 .. v11}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->withResolved(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/g;Ljava/util/Set;Ljava/util/Set;Z)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object v3

    if-eqz v2, :cond_e

    .line 34
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findFilterId(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 35
    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->withFilterId(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object v3

    .line 36
    :cond_e
    const-class v0, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->l(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object p2

    if-eqz p2, :cond_15

    .line 37
    invoke-virtual {p2}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getContentInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v0

    .line 38
    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-eq v0, v2, :cond_15

    .line 39
    sget-object v2, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_13

    const/4 v4, 0x2

    if-eq v0, v4, :cond_12

    const/4 v4, 0x3

    if-eq v0, v4, :cond_11

    const/4 v4, 0x4

    if-eq v0, v4, :cond_f

    const/4 p1, 0x5

    if-eq v0, p1, :cond_14

    goto :goto_b

    .line 40
    :cond_f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getContentFilter()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/fasterxml/jackson/databind/l;->includeFilterInstance(Lcom/fasterxml/jackson/databind/introspect/k;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_10

    goto :goto_a

    .line 41
    :cond_10
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/l;->includeFilterSuppressNulls(Ljava/lang/Object;)Z

    move-result v12

    goto :goto_b

    .line 42
    :cond_11
    sget-object v1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    goto :goto_a

    .line 43
    :cond_12
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->g:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/type/a;->isReferenceType()Z

    move-result p1

    if-eqz p1, :cond_14

    sget-object p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    move-object v1, p1

    goto :goto_a

    .line 44
    :cond_13
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->g:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/d;->b(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 46
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_14
    :goto_a
    const/4 v12, 0x1

    .line 47
    :goto_b
    invoke-virtual {v3, v1, v12}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->withContentInclusion(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object v3

    :cond_15
    return-object v3
.end method

.method public getContentSerializer()Lcom/fasterxml/jackson/databind/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->i:Lcom/fasterxml/jackson/databind/g;

    return-object v0
.end method

.method public getContentType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->g:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public getKeySerializer()Lcom/fasterxml/jackson/databind/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->h:Lcom/fasterxml/jackson/databind/g;

    return-object v0
.end method

.method public getSchema(Lcom/fasterxml/jackson/databind/l;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/e;
    .locals 0

    const-string p1, "object"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->d(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic hasSingleElement(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->hasSingleElement(Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public hasSingleElement(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)Z"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic isEmpty(Lcom/fasterxml/jackson/databind/l;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->isEmpty(Lcom/fasterxml/jackson/databind/l;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public isEmpty(Lcom/fasterxml/jackson/databind/l;Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/l;",
            "Ljava/util/Map<",
            "**>;)Z"
        }
    .end annotation

    .line 2
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->o:Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 4
    iget-boolean v3, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->p:Z

    if-nez v3, :cond_1

    return v2

    .line 5
    :cond_1
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->i:Lcom/fasterxml/jackson/databind/g;

    .line 6
    sget-object v4, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    if-ne v4, v0, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-eqz v3, :cond_9

    .line 7
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_5

    .line 8
    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->p:Z

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    return v2

    :cond_5
    if-eqz v4, :cond_6

    .line 9
    invoke-virtual {v3, p1, v6}, Lcom/fasterxml/jackson/databind/g;->isEmpty(Lcom/fasterxml/jackson/databind/l;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    return v2

    :cond_6
    if-eqz v0, :cond_7

    .line 10
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_7
    return v2

    :cond_8
    return v1

    .line 11
    :cond_9
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_c

    .line 12
    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->p:Z

    if-eqz v5, :cond_b

    goto :goto_2

    :cond_b
    return v2

    .line 13
    :cond_c
    :try_start_0
    invoke-direct {p0, p1, v5}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->A(Lcom/fasterxml/jackson/databind/l;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v6
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/DatabindException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_d

    .line 14
    invoke-virtual {v6, p1, v5}, Lcom/fasterxml/jackson/databind/g;->isEmpty(Lcom/fasterxml/jackson/databind/l;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    return v2

    :cond_d
    if-eqz v0, :cond_e

    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    :catch_0
    :cond_e
    return v2

    :cond_f
    return v1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serialize(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V

    return-void
.end method

.method public serialize(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/l;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->L1(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeWithoutTypeInfo(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V

    .line 4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->S0()V

    return-void
.end method

.method public serializeFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/l;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->j:Lcom/fasterxml/jackson/databind/jsontype/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeTypedFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->h:Lcom/fasterxml/jackson/databind/g;

    .line 4
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v1

    :goto_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 6
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 7
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->f:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->d:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {p3, v4, v6}, Lcom/fasterxml/jackson/databind/l;->findNullKeySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v4

    invoke-virtual {v4, v1, p2, p3}, Lcom/fasterxml/jackson/databind/g;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->q:Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v3}, Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;->shouldIgnore(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0, v3, p2, p3}, Lcom/fasterxml/jackson/databind/g;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V

    :goto_1
    if-nez v5, :cond_3

    .line 10
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/l;->defaultSerializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->i:Lcom/fasterxml/jackson/databind/g;

    if-nez v4, :cond_4

    .line 12
    invoke-direct {p0, p3, v5}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->A(Lcom/fasterxml/jackson/databind/l;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v4

    .line 13
    :cond_4
    invoke-virtual {v4, v5, p2, p3}, Lcom/fasterxml/jackson/databind/g;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    move-object v1, v3

    goto :goto_2

    :catch_1
    move-exception p2

    .line 14
    :goto_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, p2, p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->wrapAndThrow(Lcom/fasterxml/jackson/databind/l;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public serializeFieldsUsing(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/g;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/l;",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->h:Lcom/fasterxml/jackson/databind/g;

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->j:Lcom/fasterxml/jackson/databind/jsontype/f;

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 5
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->q:Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;

    if-eqz v5, :cond_0

    invoke-virtual {v5, v4}, Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;->shouldIgnore(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    if-nez v4, :cond_1

    .line 6
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->f:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->d:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {p3, v5, v6}, Lcom/fasterxml/jackson/databind/l;->findNullKeySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6, p2, p3}, Lcom/fasterxml/jackson/databind/g;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v0, v4, p2, p3}, Lcom/fasterxml/jackson/databind/g;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V

    .line 8
    :goto_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 9
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/l;->defaultSerializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 10
    :try_start_0
    invoke-virtual {p4, v3, p2, p3}, Lcom/fasterxml/jackson/databind/g;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p4, v3, p2, p3, v1}, Lcom/fasterxml/jackson/databind/g;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/jsontype/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 12
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p3, v3, p1, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->wrapAndThrow(Lcom/fasterxml/jackson/databind/l;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public serializeFilteredAnyProperties(Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Ljava/util/Map;Lcom/fasterxml/jackson/databind/ser/h;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/l;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "**>;",
            "Lcom/fasterxml/jackson/databind/ser/h;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->j:Lcom/fasterxml/jackson/databind/jsontype/f;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->d:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;-><init>(Lcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/BeanProperty;)V

    .line 2
    sget-object v1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    if-ne v1, p6, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 5
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->q:Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v4}, Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;->shouldIgnore(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    .line 6
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->f:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->d:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {p1, v5, v6}, Lcom/fasterxml/jackson/databind/l;->findNullKeySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v5

    goto :goto_2

    .line 7
    :cond_2
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->h:Lcom/fasterxml/jackson/databind/g;

    .line 8
    :goto_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    .line 9
    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->p:Z

    if-eqz v6, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/l;->getDefaultNullValueSerializer()Lcom/fasterxml/jackson/databind/g;

    move-result-object v6

    goto :goto_3

    .line 11
    :cond_4
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->i:Lcom/fasterxml/jackson/databind/g;

    if-nez v6, :cond_5

    .line 12
    invoke-direct {p0, p1, v3}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->A(Lcom/fasterxml/jackson/databind/l;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v6

    :cond_5
    if-eqz v1, :cond_6

    .line 13
    invoke-virtual {v6, p1, v3}, Lcom/fasterxml/jackson/databind/g;->isEmpty(Lcom/fasterxml/jackson/databind/l;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_1

    :cond_6
    if-eqz p6, :cond_7

    .line 14
    invoke-virtual {p6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_1

    .line 15
    :cond_7
    :goto_3
    invoke-virtual {v0, v4, v3, v5, v6}, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->reset(Ljava/lang/Object;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/g;)V

    .line 16
    :try_start_0
    invoke-interface {p5, p3, p2, p1, v0}, Lcom/fasterxml/jackson/databind/ser/h;->serializeAsField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/ser/PropertyWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 17
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v3, p4, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->wrapAndThrow(Lcom/fasterxml/jackson/databind/l;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    return-void
.end method

.method public serializeFilteredFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/ser/h;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/l;",
            "Lcom/fasterxml/jackson/databind/ser/h;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->j:Lcom/fasterxml/jackson/databind/jsontype/f;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->d:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;-><init>(Lcom/fasterxml/jackson/databind/jsontype/f;Lcom/fasterxml/jackson/databind/BeanProperty;)V

    .line 2
    sget-object v1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    if-ne v1, p5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 5
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->q:Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v4}, Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;->shouldIgnore(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    .line 6
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->f:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->d:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {p3, v5, v6}, Lcom/fasterxml/jackson/databind/l;->findNullKeySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v5

    goto :goto_2

    .line 7
    :cond_2
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->h:Lcom/fasterxml/jackson/databind/g;

    .line 8
    :goto_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    .line 9
    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->p:Z

    if-eqz v6, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/l;->getDefaultNullValueSerializer()Lcom/fasterxml/jackson/databind/g;

    move-result-object v6

    goto :goto_3

    .line 11
    :cond_4
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->i:Lcom/fasterxml/jackson/databind/g;

    if-nez v6, :cond_5

    .line 12
    invoke-direct {p0, p3, v3}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->A(Lcom/fasterxml/jackson/databind/l;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v6

    :cond_5
    if-eqz v1, :cond_6

    .line 13
    invoke-virtual {v6, p3, v3}, Lcom/fasterxml/jackson/databind/g;->isEmpty(Lcom/fasterxml/jackson/databind/l;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_1

    :cond_6
    if-eqz p5, :cond_7

    .line 14
    invoke-virtual {p5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_1

    .line 15
    :cond_7
    :goto_3
    invoke-virtual {v0, v4, v3, v5, v6}, Lcom/fasterxml/jackson/databind/ser/std/MapProperty;->reset(Ljava/lang/Object;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/g;)V

    .line 16
    :try_start_0
    invoke-interface {p4, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/h;->serializeAsField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/ser/PropertyWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 17
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p3, v3, p1, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->wrapAndThrow(Lcom/fasterxml/jackson/databind/l;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    return-void
.end method

.method public serializeOptionalFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/l;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->j:Lcom/fasterxml/jackson/databind/jsontype/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeTypedFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    if-ne v0, p4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 6
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->f:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->d:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {p3, v4, v5}, Lcom/fasterxml/jackson/databind/l;->findNullKeySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v4

    goto :goto_2

    .line 7
    :cond_2
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->q:Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;

    if-eqz v4, :cond_3

    invoke-virtual {v4, v3}, Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;->shouldIgnore(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->h:Lcom/fasterxml/jackson/databind/g;

    .line 9
    :goto_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    .line 10
    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->p:Z

    if-eqz v5, :cond_4

    goto :goto_1

    .line 11
    :cond_4
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/l;->getDefaultNullValueSerializer()Lcom/fasterxml/jackson/databind/g;

    move-result-object v5

    goto :goto_3

    .line 12
    :cond_5
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->i:Lcom/fasterxml/jackson/databind/g;

    if-nez v5, :cond_6

    .line 13
    invoke-direct {p0, p3, v2}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->A(Lcom/fasterxml/jackson/databind/l;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v5

    :cond_6
    if-eqz v0, :cond_7

    .line 14
    invoke-virtual {v5, p3, v2}, Lcom/fasterxml/jackson/databind/g;->isEmpty(Lcom/fasterxml/jackson/databind/l;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_1

    :cond_7
    if-eqz p4, :cond_8

    .line 15
    invoke-virtual {p4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_1

    .line 16
    :cond_8
    :goto_3
    :try_start_0
    invoke-virtual {v4, v3, p2, p3}, Lcom/fasterxml/jackson/databind/g;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V

    .line 17
    invoke-virtual {v5, v2, p2, p3}, Lcom/fasterxml/jackson/databind/g;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 18
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p3, v2, p1, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->wrapAndThrow(Lcom/fasterxml/jackson/databind/l;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    return-void
.end method

.method public serializeTypedFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/l;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    if-ne v0, p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 4
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->f:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->d:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {p3, v4, v5}, Lcom/fasterxml/jackson/databind/l;->findNullKeySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v4

    goto :goto_2

    .line 5
    :cond_1
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->q:Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v3}, Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;->shouldIgnore(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->h:Lcom/fasterxml/jackson/databind/g;

    .line 7
    :goto_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 8
    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->p:Z

    if-eqz v5, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/l;->getDefaultNullValueSerializer()Lcom/fasterxml/jackson/databind/g;

    move-result-object v5

    goto :goto_3

    .line 10
    :cond_4
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->i:Lcom/fasterxml/jackson/databind/g;

    if-nez v5, :cond_5

    .line 11
    invoke-direct {p0, p3, v2}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->A(Lcom/fasterxml/jackson/databind/l;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/g;

    move-result-object v5

    :cond_5
    if-eqz v0, :cond_6

    .line 12
    invoke-virtual {v5, p3, v2}, Lcom/fasterxml/jackson/databind/g;->isEmpty(Lcom/fasterxml/jackson/databind/l;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_1

    :cond_6
    if-eqz p4, :cond_7

    .line 13
    invoke-virtual {p4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_1

    .line 14
    :cond_7
    :goto_3
    invoke-virtual {v4, v3, p2, p3}, Lcom/fasterxml/jackson/databind/g;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V

    .line 15
    :try_start_0
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->j:Lcom/fasterxml/jackson/databind/jsontype/f;

    invoke-virtual {v5, v2, p2, p3, v4}, Lcom/fasterxml/jackson/databind/g;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/jsontype/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 16
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p3, v2, p1, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->wrapAndThrow(Lcom/fasterxml/jackson/databind/l;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    return-void
.end method

.method public bridge synthetic serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/jsontype/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeWithType(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/jsontype/f;)V

    return-void
.end method

.method public serializeWithType(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/jsontype/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/l;",
            "Lcom/fasterxml/jackson/databind/jsontype/f;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->w0(Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 4
    invoke-virtual {p4, p1, v0}, Lcom/fasterxml/jackson/databind/jsontype/f;->f(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/type/WritableTypeId;

    move-result-object v0

    .line 5
    invoke-virtual {p4, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/f;->o(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/core/type/WritableTypeId;)Lcom/fasterxml/jackson/core/type/WritableTypeId;

    move-result-object v0

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeWithoutTypeInfo(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V

    .line 7
    invoke-virtual {p4, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/f;->v(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/core/type/WritableTypeId;)Lcom/fasterxml/jackson/core/type/WritableTypeId;

    return-void
.end method

.method public serializeWithoutTypeInfo(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/l;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->r:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->ORDER_MAP_ENTRIES_BY_KEYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/l;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->C(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)Ljava/util/Map;

    move-result-object p1

    :cond_1
    move-object v1, p1

    .line 4
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->n:Ljava/lang/Object;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p3, p1, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->m(Lcom/fasterxml/jackson/databind/l;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/h;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 5
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->o:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeFilteredFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/ser/h;Ljava/lang/Object;)V

    goto :goto_1

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->o:Ljava/lang/Object;

    if-nez p1, :cond_5

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->p:Z

    if-eqz v0, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->i:Lcom/fasterxml/jackson/databind/g;

    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {p0, v1, p2, p3, p1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeFieldsUsing(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/g;)V

    goto :goto_1

    .line 9
    :cond_4
    invoke-virtual {p0, v1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;)V

    goto :goto_1

    .line 10
    :cond_5
    :goto_0
    invoke-virtual {p0, v1, p2, p3, p1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeOptionalFields(Ljava/util/Map;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/l;Ljava/lang/Object;)V

    :cond_6
    :goto_1
    return-void
.end method

.method protected w()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "N/A"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->x(Ljava/lang/String;)V

    return-void
.end method

.method public withContentInclusion(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->j:Lcom/fasterxml/jackson/databind/jsontype/f;

    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->p:Z

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;Lcom/fasterxml/jackson/databind/jsontype/f;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public withContentInclusion(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->o:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->p:Z

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "withContentInclusion"

    .line 2
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->x(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->j:Lcom/fasterxml/jackson/databind/jsontype/f;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;Lcom/fasterxml/jackson/databind/jsontype/f;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public bridge synthetic withFilterId(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->withFilterId(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object p1

    return-object p1
.end method

.method public withFilterId(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->n:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    const-string v0, "withFilterId"

    .line 3
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->x(Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->r:Z

    invoke-direct {v0, p0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public withResolved(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/g;Ljava/util/Set;Ljava/util/Set;Z)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;"
        }
    .end annotation

    const-string v0, "withResolved"

    .line 1
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->x(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/g;Ljava/util/Set;Ljava/util/Set;)V

    .line 3
    iget-boolean p1, v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->r:Z

    if-eq p6, p1, :cond_0

    .line 4
    new-instance p1, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    iget-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->n:Ljava/lang/Object;

    invoke-direct {p1, v0, p2, p6}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;Ljava/lang/Object;Z)V

    move-object v0, p1

    :cond_0
    return-object v0
.end method

.method public withResolved(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/g;Ljava/util/Set;Z)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    .line 5
    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->withResolved(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/g;Ljava/util/Set;Ljava/util/Set;Z)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object p1

    return-object p1
.end method

.method protected x(Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    invoke-static {v0, p0, p1}, Lcom/fasterxml/jackson/databind/util/g;->z0(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected final y(Lcom/fasterxml/jackson/databind/ser/impl/c;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/l;)Lcom/fasterxml/jackson/databind/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/impl/c;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/l;",
            ")",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->d:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/impl/c;->j(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/ser/impl/c$d;

    move-result-object p2

    .line 2
    iget-object p3, p2, Lcom/fasterxml/jackson/databind/ser/impl/c$d;->b:Lcom/fasterxml/jackson/databind/ser/impl/c;

    if-eq p1, p3, :cond_0

    .line 3
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->k:Lcom/fasterxml/jackson/databind/ser/impl/c;

    .line 4
    :cond_0
    iget-object p1, p2, Lcom/fasterxml/jackson/databind/ser/impl/c$d;->a:Lcom/fasterxml/jackson/databind/g;

    return-object p1
.end method

.method protected final z(Lcom/fasterxml/jackson/databind/ser/impl/c;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/l;)Lcom/fasterxml/jackson/databind/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/impl/c;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/l;",
            ")",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->d:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/impl/c;->k(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/ser/impl/c$d;

    move-result-object p2

    .line 2
    iget-object p3, p2, Lcom/fasterxml/jackson/databind/ser/impl/c$d;->b:Lcom/fasterxml/jackson/databind/ser/impl/c;

    if-eq p1, p3, :cond_0

    .line 3
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->k:Lcom/fasterxml/jackson/databind/ser/impl/c;

    .line 4
    :cond_0
    iget-object p1, p2, Lcom/fasterxml/jackson/databind/ser/impl/c$d;->a:Lcom/fasterxml/jackson/databind/g;

    return-object p1
.end method
