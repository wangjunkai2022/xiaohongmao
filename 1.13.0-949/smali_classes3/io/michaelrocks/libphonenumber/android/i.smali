.class final Lio/michaelrocks/libphonenumber/android/i;
.super Ljava/lang/Object;
.source "MultiFileMetadataSourceImpl.java"

# interfaces
.implements Lio/michaelrocks/libphonenumber/android/h;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lio/michaelrocks/libphonenumber/android/g;

.field private final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/michaelrocks/libphonenumber/android/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "metadataLoader"
        }
    .end annotation

    const-string v0, "/io/michaelrocks/libphonenumber/android/data/PhoneNumberMetadataProto"

    const-string v1, "/io/michaelrocks/libphonenumber/android/data/PhoneNumberAlternateFormatsProto"

    const-string v2, "/io/michaelrocks/libphonenumber/android/data/ShortNumberMetadataProto"

    .line 8
    invoke-direct {p0, v0, v1, v2, p1}, Lio/michaelrocks/libphonenumber/android/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/michaelrocks/libphonenumber/android/f;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/michaelrocks/libphonenumber/android/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "phoneNumberMetadataFilePrefix",
            "alternateFormatsFilePrefix",
            "shortNumberFilePrefix",
            "metadataLoader"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/i;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/i;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/i;->a:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lio/michaelrocks/libphonenumber/android/i;->b:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lio/michaelrocks/libphonenumber/android/i;->c:Ljava/lang/String;

    .line 7
    new-instance p1, Lio/michaelrocks/libphonenumber/android/g;

    invoke-direct {p1, p4}, Lio/michaelrocks/libphonenumber/android/g;-><init>(Lio/michaelrocks/libphonenumber/android/f;)V

    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/i;->d:Lio/michaelrocks/libphonenumber/android/g;

    return-void
.end method

.method private e(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "countryCallingCode"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/michaelrocks/libphonenumber/android/e;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "001"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "regionCode"
        }
    .end annotation

    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/i;->d:Lio/michaelrocks/libphonenumber/android/g;

    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/i;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/i;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lio/michaelrocks/libphonenumber/android/g;->b(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "countryCallingCode"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/michaelrocks/libphonenumber/android/i;->e(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/i;->d:Lio/michaelrocks/libphonenumber/android/g;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/i;->f:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/i;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lio/michaelrocks/libphonenumber/android/g;->b(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "countryCallingCode"
        }
    .end annotation

    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/i;->d:Lio/michaelrocks/libphonenumber/android/g;

    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/i;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lio/michaelrocks/libphonenumber/android/g;->a(ILjava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "regionCode"
        }
    .end annotation

    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/i;->d:Lio/michaelrocks/libphonenumber/android/g;

    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/i;->c:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lio/michaelrocks/libphonenumber/android/g;->d(Ljava/lang/String;Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object p1

    return-object p1
.end method
