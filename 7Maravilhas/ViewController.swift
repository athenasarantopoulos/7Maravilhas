//
//  ViewController.swift
//  7Maravilhas
//
//  Created by Athena Fernandes Sarantôpoulos on 19/07/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var maravilhas = [Maravilha]()
    
    @IBOutlet weak var viewTable: UITableView!
    
    override func viewDidLoad() {
        
        viewTable.delegate = self
        viewTable.dataSource = self
        
        super.viewDidLoad()
        
        let chichen = Maravilha(name: "Chichén Itzá", city: "Coliseu", description: "Chichén Itzá (do iucateque: Chi'ch'èen Ìitsha) foi uma grande cidade pré-colombiana construída pela civilização maia no final do período clássico. O sítio arqueológico está localizado no município de Tinum, no estado de Yucatán, México.Chichén Itzá era um polo urbano importante dos maias na planície norte no início (600-900) e no final (cerca 800-900) do período clássico e também no início do período pós-clássico (cerca de 900-1200). O local exibe vários estilos arquitetônicos, reminiscentes dos estilos vistos no México central. Acreditava-se que a presença de estilos desta região era sinal da migração direta ou mesmo da conquista do México central, mas a maioria de interpretações contemporâneas veem a presença destes estilos não maias mais como o resultado da difusão cultural.", nameImage: "chichen")
        maravilhas.append(chichen)
        let coliseu = Maravilha(name: "Coliseu", city: "Itália", description: "Coliseu (em italiano: Colosseo), também conhecido como Anfiteatro Flaviano (em latim: Amphitheatrum Flavium; em italiano: Anfiteatro Flavio), é um anfiteatro oval localizado no centro da cidade de Roma, capital da Itália. Construído com tijolos revestidos de argamassa e areia, e originalmente cobertos com travertino é o maior anfiteatro já construído e está situado a leste do Fórum Romano.", nameImage: "coliseu")
        maravilhas.append(coliseu)
        let cristo = Maravilha(name: "Cristo Redentor", city: "Brasil", description: "Cristo Redentor é uma estátua art déco que retrata Jesus Cristo, localizada no topo do morro do Corcovado, a 709 metros acima do nível do mar, no Parque Nacional da Tijuca, com vista para a maior parte da cidade do Rio de Janeiro, Brasil. Em 2007 foi eleito informalmente como uma das sete maravilhas do mundo moderno. Em 2012 a UNESCO considerou o Cristo Redentor como parte da paisagem do Rio de Janeiro incluída na lista de Patrimônios da Humanidade.O monumento foi concebido pelo engenheiro brasileiro Heitor da Silva Costa e construído em colaboração com o escultor francês Paul Landowski e com o engenheiro compatriota Albert Caquot, entre 1922 e 1931 na França, devido o pensamento dos franceses, de que os brasileiros não tinham experiência para construir a estátua. Foi inaugurada no dia 12 de outubro de 1931, dia de Nossa Senhora Aparecida e fica no bairro do Alto da Boa Vista.", nameImage: "cristoredentor")
        maravilhas.append(cristo)
        let muralha = Maravilha(name: "Grande Muralha da China", city: "China", description: "Grande Muralha da China é uma série de fortificações feitas de pedra, tijolo, terra compactada, madeira e outros materiais, geralmente construída ao longo de uma linha leste-oeste através das fronteiras históricas do norte da China para proteger os Estados e impérios chineses contra as invasões dos vários grupos nômades das estepes da Eurásia, principalmente os mongóis. Várias muralhas estavam sendo construídas já no século VII a.C.,[1] que mais tarde foram unidas e tornadas maiores e mais fortes, no que agora é referido como a Grande Muralha. Especialmente famosa é a muralha construída entre 220 e 206 a.C. por Qin Shi Huang, o primeiro Imperador da China. Pouco desta muralha permanece nos dias atuais. Desde então, a Grande Muralha foi reconstruída, mantida e melhorada; a maior parte do trecho existente é da dinastia Ming (1368-1644).", nameImage: "muralhachina")
        maravilhas.append(muralha)
        let machu = Maravilha(name: "Machu Picchu", city: "Peru", description: "Machu Picchu (em quíchua Machu Picchu, ´velha montanha´),também chamada ´cidade perdida dos Incas´ é uma cidade pré-colombiana bem conservada, localizada no topo de uma montanha, a 2 400 metros de altitude, no vale do rio Urubamba, atual Peru.Foi construída no século XV, sob as ordens de Pachacuti. O local é, provavelmente, o símbolo mais típico do Império Inca, quer devido à sua original localização e características geológicas, quer devido à sua descoberta tardia em 1911. Apenas cerca de 30% da cidade é de construção original, o restante foi reconstruído. As áreas reconstruídas são facilmente reconhecidas, pelo encaixe entre as pedras. A construção original é formada por pedras maiores, e com encaixes com pouco espaço entre as rochas.", nameImage: "machu")
        maravilhas.append(machu)
        let gize = Maravilha(name: "Necrópole de Gizé", city: "Egito", description: "Necrópole de Gizé (em árabe: جيزة يسروبوليس), também chamada de Pirâmides de Gizé, Guizé ou Guisa,[1] é um sítio arqueológico localizado no planalto de Gizé, nos arredores do Cairo, Egito. Este complexo de monumentos antigos inclui os três complexos de pirâmides conhecidas como as Grandes Pirâmides, a escultura maciça conhecida como a Grande Esfinge, vários cemitérios, uma vila operária e um complexo industrial. A palavra pirâmide não provém da língua egípcia. Formou-se a partir do grego ´pyra´ (que quer dizer fogo, luz, símbolo) e ´midos´ (que significa medidas).", nameImage: "gize")
        maravilhas.append(gize)
        let petra = Maravilha(name: "Petra", city: "Jordania", description: "Petra (do grego πέτρα, petra; árabe: البتراء, Al-Bitrā/Al-Batrā), originalmente conhecida pelos nabateus como Raqmu, é uma cidade histórica e arqueológica localizada no sul da Jordânia. A cidade é famosa por sua arquitetura esculpida em rocha e por seu sistema de canalização de água. Outro nome para Petra é Cidade Rosa, devido à cor das pedras do local.", nameImage: "petra")
        maravilhas.append(petra)
        let taj = Maravilha(name: "Taj Mahal", city: "Índia", description: "O Taj Mahal (em hindi: ताज महल) é um mausoléu situado em Agra, na Índia, sendo o mais conhecido dos monumentos do país. Encontra-se classificado pela UNESCO como Patrimônio da Humanidade. Foi anunciado em 2007 como uma das sete maravilhas do mundo moderno.A obra foi feita entre 1632 e 1653 com a força de cerca de 20 mil homens, trazidos de várias cidades do Oriente, para trabalhar no suntuoso monumento de mármore branco que o imperador Shah Jahan mandou construir em memória de sua esposa favorita, Aryumand Banu Begam, a quem chamava de Mumtaz Mahal (´A joia do palácio). Ela morreu após dar à luz o 14º filho, tendo o Taj Mahal sido construído sobre seu túmulo, junto ao rio Yamuna.", nameImage: "tajmahal")
        maravilhas.append(taj)
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return maravilhas.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "maravilhasTableViewCell") as! MaravilhaTableViewCell
        
        cell.nomeLabel.text = maravilhas[indexPath.row].name.capitalized
        cell.cidadeLabel.text = maravilhas[indexPath.row].city.capitalized
        let name = maravilhas[indexPath.row].nameImage
        cell.maravilhaImageView.image = UIImage(named: name)
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedIndex = indexPath.row
        performSegue(withIdentifier: "showDetails", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetailsViewController {
            destination.maravilhas = maravilhas[(viewTable.indexPathForSelectedRow?.row)!]
        }
    }
    
}

