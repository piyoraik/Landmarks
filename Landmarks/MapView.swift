
import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 34.011286, longitude: -116.166868)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let reagion = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(reagion, animated: true)
    }
}

struct MapView_previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
